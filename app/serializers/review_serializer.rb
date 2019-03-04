class ReviewSerializer < ActiveModel::Serializer
  attributes %i[id content rating reviewer]
  belongs_to :reviewer
  belongs_to :movie

  def reviewer
    reviewer = {
      id: object.reviewer.id,
      email: object.reviewer.email
    }
  end
end