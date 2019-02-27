class Review < ApplicationRecord
  belongs_to :reviewer, class_name: 'User', foreign_key: :user_id
  belongs_to :movie
  validates :content, presence: true, length: { minimum: 10 }, uniqueness: { scope: :movie }
end
