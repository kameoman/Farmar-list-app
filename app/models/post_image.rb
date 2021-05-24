class PostImage < ApplicationRecord
   # PostImageモデルにUserモデルを関連付ける
   belongs_to :user
   has_many :Vegetables, dependent: :destroy
   attachment :image

   def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
   end
end
