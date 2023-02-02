class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, presence: true, uniqueness: { scope: :list }
  validates :list_id, presence: true, uniqueness: { scope: :movie }
  validates :comment, length: { minimum: 6 }
  validates :comment, presence: true
end
