class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    if params[:query].present?
      @movies = Movie.global_search(params[:query])
    end
  end
end
