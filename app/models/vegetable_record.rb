class VegetableRecord < ApplicationRecord
  has_many :post_images, dependent: :destroy
  
  attachment :profile_image
end
