class AddDriverToViolations < ActiveRecord::Migration[6.0]
  def change
    add_reference :violations, :driver
  end
end
