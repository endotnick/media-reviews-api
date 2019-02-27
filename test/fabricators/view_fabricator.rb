Fabricator(:view) do
  viewer do
    # as either an existing user or newly generated user
    existing_users = User.all if User.any? && [true, false].sample
    existing_users ? existing_users.sample : Fabricate(:reviewer)
  end
  movie do
    # randomly review an existing movie or newly generated movie
    existing_movie = Movie.all if Movie.any? && [true, false].sample
    existing_movie ? existing_movie.sample : Fabricate(:movie)
  end
end
