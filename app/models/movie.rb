class Movie < ApplicationRecord
  has_many :reviews
  has_many :reviewers, through: :reviews, source: :reviewer
  has_many :views
  has_many :viewers, through: :views, source: :viewer
  validates :title, presence: true, uniqueness: true
  validates :tmdb_id, presence: true, uniqueness: true
end
