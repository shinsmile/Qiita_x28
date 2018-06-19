class Article < ApplicationRecord
  has_many :stocks
  has_many :users, through: :stocks
  has_many :tag_articles
  has_many :tags, through: :tag_articles
  has_many :likes
  has_many :users, through: :likes
  belongs_to :user
  has_many :comments

end
