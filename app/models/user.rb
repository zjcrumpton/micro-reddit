class User < ApplicationRecord
  validates :username, presence: true, length: { in: 3..20 }, uniqueness: true
  has_many :posts
  has_many :comments
end
