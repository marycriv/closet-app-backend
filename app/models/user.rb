class User < ApplicationRecord
  has_many :items
  has_many :outfits

  validates :username, uniqueness: true
  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }

  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followees, through: :followed_users
  
  has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
  has_many :followers, through: :following_users

end
