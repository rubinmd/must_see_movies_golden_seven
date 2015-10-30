Rails.application.routes.draw do
  root"directors#index_directors"
  get("/directors",  { :controller => "directors", :action => "index_directors" })
  get("/add_director",  { :controller => "directors", :action => "add_director" })
  get("/submit_director",  { :controller => "directors", :action => "submit_director" })
  get("/delete_director/:id",  { :controller => "directors", :action => "delete_director" })
  get("/edit_director/:id",  { :controller => "directors", :action => "edit_director" })
  get("/update_director/:id",  { :controller => "directors", :action => "update_director" })
  get("/view_director/:id",  { :controller => "directors", :action => "view_director" })

  get("/movies",  { :controller => "movies", :action => "index_movies" })
  get("/add_movie",  { :controller => "movies", :action => "add_movie" })
  get("/submit_movie",  { :controller => "movies", :action => "submit_movie" })
  get("/delete_movie/:id",  { :controller => "movies", :action => "delete_movie" })
  get("/edit_movie/:id",  { :controller => "movies", :action => "edit_movie" })
  get("/update_movie/:id",  { :controller => "movies", :action => "update_movie" })
  get("/view_movie/:id",  { :controller => "movies", :action => "view_movie" })

  get("/actors",  { :controller => "actors", :action => "index_actors" })
  get("/add_actor",  { :controller => "actors", :action => "add_actor" })
  get("/submit_actor",  { :controller => "actors", :action => "submit_actor" })
  get("/delete_actor/:id",  { :controller => "actors", :action => "delete_actor" })
  get("/edit_actor/:id",  { :controller => "actors", :action => "edit_actor" })
  get("/update_actor/:id",  { :controller => "actors", :action => "update_actor" })
  get("/view_actor/:id",  { :controller => "actors", :action => "view_actor" })
end
