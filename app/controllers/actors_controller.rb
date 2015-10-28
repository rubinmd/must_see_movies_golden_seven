class ActorsController < ApplicationController
  def index_actors
    @actors=Actor.all
  end
end
