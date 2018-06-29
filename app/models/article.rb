class Article < ApplicationRecord
  has_many :stocks, dependent: :destroy
  has_many :users, through: :stocks
  has_many :likes
  has_many :users, through: :likes
  belongs_to :user
  has_many :comments

  acts_as_taggable
  acts_as_taggable_on :articles
  def stock_user(user_id)
    stocks.find_by(user_id: user_id)
  end

end
