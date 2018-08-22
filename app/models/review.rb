class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :comment, lenght: {maximum: 250}
  validates :rating, lenght: {in: 1..5}
end
