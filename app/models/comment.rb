class Comment < ApplicationRecord
  validates :body, presence: true, length: { in: 1..10000 }
  validates :user_id, presence: true
  validates :post_id, presence: true
  belongs_to :post
  belongs_to :user
end
