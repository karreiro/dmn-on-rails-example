class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :points
      t.integer :age
      t.string :picture_url

      t.timestamps
    end
  end
end
