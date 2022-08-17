class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, numericality: { only_integer: true, in: 0..5, message: "Please choose a number between 1 and 5" }
end
