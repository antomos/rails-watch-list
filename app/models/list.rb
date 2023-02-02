class List < ApplicationRecord
  has_many :bookmarks
  has_many :reviews, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, uniqueness: true, presence: true
end
