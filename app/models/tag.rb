class Tag < ApplicationRecord

#アソシエーション
  has_many :user_tags
  has_many :users, through: :user_tags
  has_many :tag_articles
  has_many :articles, through: :tag_articles

end
