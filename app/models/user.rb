class User < ApplicationRecord
  has_many :reviews
  has_many :reviewed_media, through: :reviews, source: :medium
  has_many :views
  has_many :viewed_media, through: :views, source: :medium
  has_secure_password

  def find
    user = User.find_by(email: params[:user][:email])
    if user
      render json: user
    else
      render json: user.errors.full_messages
    end
  end
end
