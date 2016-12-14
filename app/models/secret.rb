class Secret < ApplicationRecord
  belongs_to :user
  has_many :likes, :dependent => :destroy
  # has_many :users, through: :likes
  has_many :liked_users, :through => :likes, :source => :user
end
