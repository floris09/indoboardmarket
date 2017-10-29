class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.image_url :image
      t.references :category, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
