class MoviesController < ApplicationController

  def index_movies
    @movies=Movie.all
  end

  def add_movie
  end

  def submit_movie
    @title=params["title"]
    @year=params["year"]
    @duration=params["duration"]
    @description=params["description"]
    @img_url=params["img_url"]
    m=Movie.new
    m.title=@title
    m.year=@year
    m.duration=@duration
    m.description=@description
    m.image_url=@img_url
    m.save
  end

  def delete_movie
    @id=params[:id]
    Movie.find(@id).destroy
    redirect_to("/movies")
  end

  def edit_movie
    @id=params[:id]
    @movie=Movie.find(@id)
  end

  def update_movie
    @id=params[:id]
    @title=params["title"]
    @year=params["year"]
    @duration=params["duration"]
    @description=params["description"]
    @img_url=params["img_url"]
    m=Movie.find(@id)
    m.title=@title
    m.year=@year
    m.duration=@duration
    m.description=@description
    m.image_url=@img_url
    m.save
  end

  def view_movie
    @id=params[:id]
    @movie=Movie.find(@id)
  end

end
