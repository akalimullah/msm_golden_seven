class MoviesController < ApplicationController
  def index
    @list = Movie.all
  end

  def show
    @the_movie = Movie.find(params[:id])
  end

  def new_form
  end

  def create_row
    the_movie = Movie.new
    the_movie.title = params[:the_title]
    the_movie.year = params[:the_year]
    the_movie.duration = params[:the_duration]
    the_movie.description = params[:the_description]
    the_movie.image_url = params[:the_image_url]
    the_movie.save
    redirect_to("http://localhost:3000/movies")
  end

  def destroy
    the_movie = Movie.find(params[:id])
    the_movie.destroy
    redirect_to("http://localhost:3000/movies")
  end

  def edit_form
    @the_movie = Movie.find(params[:id])
  end

  def update_row
    the_movie = Movie.find(params[:id])
    the_movie.title = params[:the_title]
    the_movie.year = params[:the_year]
    the_movie.duration = params[:the_duration]
    the_movie.description = params[:the_description]
    the_movie.image_url = params[:the_image_url]
    the_movie.save
    redirect_to("http://localhost:3000/movies/" + params[:id])
  end
end
