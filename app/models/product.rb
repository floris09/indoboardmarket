class Product < ApplicationRecord
  belongs_to :category
  belongs_to :location
  belongs_to :user
  has_many :photos

end
