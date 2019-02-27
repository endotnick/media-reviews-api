Fabricator(:movie) do
  tmdb_id { Faker::Number.number(5) }
end
