class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :reviews]

  def index
    @movies = Movie.all

    render json: @movies, each_serializer: MovieIndexSerializer 
  end

  def show
    render json: @movie
  end

  def reviews
    render json: @movie.reviews, each_serializer: MovieReviewSerializer 
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_params
      params.require(:movie).permit(:tmbdb_id)
    end
end
