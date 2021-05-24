class VegetableRecord < ApplicationRecord
  has_many :post_images
  belongs_to :user, optional: true
  
end
