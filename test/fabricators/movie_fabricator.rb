Fabricator(:movie) do
  tmdb_id { Faker::Number.between(1,150000) }
end
