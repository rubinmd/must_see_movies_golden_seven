class ActorsController < ApplicationController
  def index_actors
    @actors=Actor.all
  end

  def add_actor
  end

  def submit_actor
    @name=params["name"]
    @img_url=params["img_url"]
    @dob=params["dob"]
    @bio=params["bio"]
    a=Actor.new
    a.name=@name
    a.image_url=@img_url
    a.dob=@dob
    a.bio=@bio
    a.save
  end

  def delete_actor
    @id=params[:id]
    Actor.find(@id).destroy
    redirect_to("/actors")
  end

  def edit_actor
    @id=params[:id]
    @actor=Actor.find(@id)
  end

  def update_actor
    @id=params[:id]
    @name=params["name"]
    @img_url=params["img_url"]
    @dob=params["dob"]
    @bio=params["bio"]
    a=Actor.find(@id)
    a.name=@name
    a.image_url=@img_url
    a.dob=@dob
    a.bio=@bio
    a.save
  end

  def view_actor
    @id=params[:id]
    @actor=Actor.find(@id)
  end
end
