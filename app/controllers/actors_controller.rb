class ActorsController < ApplicationController
  def index
    @list = Actor.all
  end

  def show
    @the_actor = Actor.find(params[:id])
  end

  def new_form
  end

  def create_row
    the_actor = Actor.new
    the_actor.name = params[:the_name]
    the_actor.bio = params[:the_bio]
    the_actor.dob = params[:the_dob]
    the_actor.image_url = params[:the_image_url]
    the_actor.save
    redirect_to("http://localhost:3000/actors")
  end

  def destroy
    the_actor = Actor.find(params[:id])
    the_actor.destroy
    redirect_to("http://localhost:3000/actors")
  end

  def edit_form
    @the_actor = Actor.find(params[:id])
  end

  def update_row
    the_actor = Actor.find(params[:id])
    the_actor.name = params[:the_name]
    the_actor.bio = params[:the_bio]
    the_actor.dob = params[:the_dob]
    the_actor.image_url = params[:the_image_url]
    the_actor.save
    redirect_to("http://localhost:3000/actors/" + params[:id])
  end
end
