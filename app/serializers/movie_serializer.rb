class MovieSerializer < ActiveModel::Serializer
  attributes %i[id tmdb_id title]
  has_many :reviews
end
