class DirectorsController < ApplicationController

  def index_directors
    @directors=Director.all
  end

  def add_director
  end

  def submit_director
    @name=params["name"]
    @img_url=params["img_url"]
    @dob=params["dob"]
    @bio=params["bio"]
    d=Director.new
    d.name=@name
    d.image_url=@img_url
    d.dob=@dob
    d.bio=@bio
    d.save
  end

  def delete_director
    @id=params[:id]
    Director.find(@id).destroy
    redirect_to("/directors")
  end

  def edit_director
    @id=params[:id]
    @director=Director.find(@id)
  end

  def update_director
    @id=params[:id]
    @name=params["name"]
    @img_url=params["img_url"]
    @dob=params["dob"]
    @bio=params["bio"]
    d=Director.find(@id)
    d.name=@name
    d.image_url=@img_url
    d.dob=@dob
    d.bio=@bio
    d.save
  end

  def view_director
    @id=params[:id]
    d=Director.find(@id)
    @name=d.name
    @img_url=d.image_url
    @dob=d.dob
    @bio=d.bio
  end

end
