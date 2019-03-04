class UserSerializer < ActiveModel::Serializer
  attributes %i[id email]
  has_many :reviews, serializer: UserReviewSerializer
  has_many :views
end
