class ViewSerializer < ActiveModel::Serializer
  attributes %i[id movie_id user_id title created_at]

  def title
    object.movie.title
  end
end
