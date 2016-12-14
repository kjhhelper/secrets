class User < ApplicationRecord
  has_secure_password
  has_many :secrets
  has_many :liked_secrets, :through => :likes, :source => :secret
  has_many :likes
end
