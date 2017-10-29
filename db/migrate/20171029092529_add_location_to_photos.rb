class AddLocationToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_reference :photos, :location, foreign_key: true
  end
end
