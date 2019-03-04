class User < ApplicationRecord
  has_many :reviews
  has_many :reviewed_media, through: :reviews, source: :movie
  has_many :views
  has_many :viewed_media, through: :views, source: :movie
  validates :email, presence: true, uniqueness: true
  has_secure_password  
end
