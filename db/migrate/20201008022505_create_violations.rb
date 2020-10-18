class CreateViolations < ActiveRecord::Migration[6.0]
  def change
    create_table :violations do |t|
      t.string :violation_type
      t.float :speed_limit
      t.float :actual_speed

      t.timestamps
    end
  end
end
