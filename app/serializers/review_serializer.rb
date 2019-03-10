class ReviewSerializer < ActiveModel::Serializer
  attributes %i[id content rating reviewer updated_at]
  belongs_to :reviewer
  belongs_to :movie

  def reviewer
    reviewer = {
      id: object.reviewer.id,
      email: object.reviewer.email
    }
  end
end