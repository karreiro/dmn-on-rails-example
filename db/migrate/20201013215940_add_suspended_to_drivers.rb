class AddSuspendedToDrivers < ActiveRecord::Migration[6.0]
  def change
    add_column :drivers, :suspended, :boolean
  end
end
