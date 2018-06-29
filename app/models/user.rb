class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #アソシエーション
  has_many :stocks
  has_many :articles, through: :stocks
  has_many :user_tags
  has_many :tags, through: :user_tags
  has_many :likes
  has_many :articles, through: :likes
  has_many :articles
  has_many :comments
  # likescount
  has_many :likes, dependent: :destroy
  #フォロー機能
  acts_as_followable # フォロワー機能
  acts_as_follower   # フォロー機能

end
