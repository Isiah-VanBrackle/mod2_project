class Book < ApplicationRecord
  has_one_attached :image
  has_many :reviews
  has_many :users, through: :reviews



  def avg_star_rating
   ans =  self.reviews.map {|ele| ele.rating}
  ans =  ans.reduce(:+)
   ans / self.reviews.length

  end 

end
