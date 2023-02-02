class Review < ApplicationRecord
  belongs_to :list
  RATINGS = [0,1,2,3,4,5]
  validates :rating, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: RATINGS,
    message: "%{value} is not a valid rating" }, numericality: { only_integer: true }

end
