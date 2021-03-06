class Photo < ApplicationRecord
  belongs_to :location
  belongs_to :category
  belongs_to :product

  mount_uploader :image, ImageUploader
end
