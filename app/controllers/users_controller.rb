class UsersController < ApplicationController
  before_action :set_user, only: %i[show update reviews views]

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def reviews
    render json: @user.reviews, each_serializer: UserReviewSerializer 
  end

  def views
    render json: @user.views
  end

  def find
    user = User.find_by(email: params[:user][:email])
    if user
      render json: user
    else
      render json: { error: 'User not found' }, status: :not_found
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:id, :email, :password)
    end
end
