class Product < ApplicationRecord
  belongs_to :category
  belongs_to :location
  has_many :photos
end
