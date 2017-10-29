class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :island
      t.string :region

      t.timestamps
    end
  end
end
