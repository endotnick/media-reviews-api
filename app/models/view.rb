class View < ApplicationRecord
  belongs_to :viewer, class_name: 'User', foreign_key: :user_id
  belongs_to :movie
  validates :viewer, presence: true
  validates :movie, presence: true
  validates_uniqueness_of :viewer, scope: :movie
end
