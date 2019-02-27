class ViewsController < ApplicationController
  before_action :set_view, only: [:destroy]

  # POST /views
  def create
    @view = View.new(view_params)

    if @view.save
      render json: @view, status: :created, location: @view
    else
      render json: @view.errors, status: :unprocessable_entity
    end
  end

  # DELETE /views/1
  def destroy
    @view.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_view
      @view = View.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def view_params
      params.require(:view).permit(:user_id, :movie_id)
    end
end
