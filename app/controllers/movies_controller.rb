class MoviesController < ApplicationController

  def index_directors
    @directors=Director.all
  end

end
