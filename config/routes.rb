Rails.application.routes.draw do
  get("/directors",           { :controller => "movies", :action => "index_directors" })
end
