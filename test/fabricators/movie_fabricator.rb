Fabricator(:movie) do
  # Faker does not have Faker::Movie.title
  # faked title will not correspond to tmdb title
  title { Faker::Book.unique.title }
  tmdb_id { Faker::Number.between(1, 150000) }
end
