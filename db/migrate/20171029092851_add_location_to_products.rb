class AddLocationToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :location, foreign_key: true
  end
end
