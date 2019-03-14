pics = [
  'https://loremflickr.com/250/400/', 
  'https://placeimg.com/250/400/any', 
  'https://placeimg.com/250/400/any/grayscale', 
  'https://placeimg.com/250/400/any/sepia', 
  'https://placeimg.com/250/400/animals', 
  'https://placeimg.com/250/400/animals/grayscale', 
  'https://placeimg.com/250/400/animals/sepia', 
  'https://placeimg.com/250/400/architecture', 
  'https://placeimg.com/250/400/architecture/grayscale', 
  'https://placeimg.com/250/400/architecture/sepia', 
  'https://placeimg.com/250/400/nature', 
  'https://placeimg.com/250/400/nature/grayscale', 
  'https://placeimg.com/250/400/nature/sepia', 
  'https://placeimg.com/250/400/people', 
  'https://placeimg.com/250/400/people/grayscale', 
  'https://placeimg.com/250/400/people/sepia', 
  'https://placeimg.com/250/400/tech',
  'https://placeimg.com/250/400/tech/grayscale',
  'https://placeimg.com/250/400/tech/sepia'
]

Fabricator(:movie) do
  # Faker does not have Faker::Movie.title
  # faked title will not correspond to tmdb title
  title { Faker::Book.unique.title }
  poster_url do
    pics.sample
  end
  tmdb_id { Faker::Number.between(1, 150000) }
end
