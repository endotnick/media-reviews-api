class MovieSerializer < ActiveModel::Serializer
  attributes %i[id tmdb_id poster_url title]
end
