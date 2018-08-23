class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :comment, length: {maximum: 250}
  validates :rating, length: {in: 1..5}
end
