class ViolationsController < ApplicationController
  before_action :set_violation, only: [:show, :edit, :update, :destroy]
  before_action :set_drivers, only: [:new, :edit, :create, :update]

  def index
    @violations = Violation.all
  end

  def new
    @violation = Violation.new
  end

  def create
    @violation = Violation.new(violation_params)

    respond_to do |format|
      if @violation.save

        result = DmnModel.execute(@violation)
        driver = @violation.driver
        driver.points += result['Fine']['Points']
        driver.suspended = result['Should be suspended?'] == 'YES'
        driver.save!

        format.html { redirect_to @violation, notice: 'Violation was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @violation.update(violation_params)
        format.html { redirect_to @violation, notice: 'Violation was successfully updated.' }
        format.json { render :show, status: :ok, location: @violation }
      else
        format.html { render :edit }
        format.json { render json: @violation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @violation.destroy
    respond_to do |format|
      format.html { redirect_to violations_url, notice: 'Violation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_violation
    @violation = Violation.find(params[:id])
  end

  def violation_params
    params.require(:violation).permit(:driver_id, :violation_type, :speed_limit, :actual_speed)
  end

  def set_drivers
    @drivers = Driver.all
  end
end
