Rails.application.routes.draw do
  get("/directors",  { :controller => "movies", :action => "index_directors" })
  get("/add_director",  { :controller => "movies", :action => "add_director" })
  get("/submit_director",  { :controller => "movies", :action => "submit_director" })
  get("/delete_director/:id",  { :controller => "movies", :action => "delete_director" })
  get("/edit_director/:id",  { :controller => "movies", :action => "edit_director" })
  get("/update_director/:id",  { :controller => "movies", :action => "update_director" })
  get("/view_director/:id",  { :controller => "movies", :action => "view_director" })
end
