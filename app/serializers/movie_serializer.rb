class MovieSerializer < ActiveModel::Serializer
  attributes %i[id tmdb_id title]
end
