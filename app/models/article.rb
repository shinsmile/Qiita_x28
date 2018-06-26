class Article < ApplicationRecord
  has_many :stocks
  has_many :users, through: :stocks
  has_many :likes
  has_many :users, through: :likes
  belongs_to :user
  has_many :comments

  acts_as_taggable
  acts_as_taggable_on :articles
end
