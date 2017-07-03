class Friendship < ApplicationRecord
  belongs_to :friend
  belongs_to :user
end
