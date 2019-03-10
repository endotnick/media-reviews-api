class UserReviewSerializer < ActiveModel::Serializer
  attributes %i[id content rating movie_title movie_id updated_at]

  def movie_title
    object.movie.title
  end
end
