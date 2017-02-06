class DirectorsController < ApplicationController
  def index
    @list = Director.all
  end

  def show
    @the_director = Director.find(params[:id])
  end

  def new_form
  end

  def create_row
    the_director = Director.new
    the_director.name = params[:the_name]
    the_director.bio = params[:the_bio]
    the_director.dob = params[:the_dob]
    the_director.image_url = params[:the_image_url]
    the_director.save
    redirect_to("http://localhost:3000/directors")
  end

  def destroy
    the_director = Director.find(params[:id])
    the_director.destroy
    redirect_to("http://localhost:3000/directors")
  end

  def edit_form
    @the_director = Director.find(params[:id])
  end

  def update_row
    the_director = Director.find(params[:id])
    the_director.name = params[:the_name]
    the_director.bio = params[:the_bio]
    the_director.dob = params[:the_dob]
    the_director.image_url = params[:the_image_url]
    the_director.save
    redirect_to("http://localhost:3000/directors/" + params[:id])
  end
end
