class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { in: 1..300}
  validates :body, presence: true, length: { in: 1..40000 }, allow_blank: true
  validates :link, presence: true
  belongs_to :user
  has_many :comments
end
