class MovieReviewSerializer < ActiveModel::Serializer
  attributes %i[id content rating reviewer updated_at]
  belongs_to :reviewer

  def reviewer
    reviewer = {
      id: object.reviewer.id,
      email: object.reviewer.email
    }
  end
end
