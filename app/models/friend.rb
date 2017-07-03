class Friend < ApplicationRecord
  belongs_to :user
  has_many :friendships
  has_many :friendsship_with_users, :through => :friendships, :source => :user
end
