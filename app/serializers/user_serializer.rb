class UserSerializer < ActiveModel::Serializer
  attributes %i[id email]
  has_many :views
end
