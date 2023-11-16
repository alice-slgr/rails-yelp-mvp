class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}

  def average_rating
    # self.reviews.map { |review| review.rating }
    number_of_reviews = self.reviews.count
    total = self.reviews.pluck(:rating).sum
    average = total.fdiv(number_of_reviews)
    return average
  end
end
