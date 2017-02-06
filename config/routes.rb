Rails.application.routes.draw do
  get("/directors", { :controller => "directors" , :action => "index"})
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })
  get("/directors/:id",       { :controller => "directors", :action => "show" })
  get("/create_director", { :controller => "directors", :action => "create_row" })
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })
  get("/update_director/:id", { :controller => "directors", :action => "update_row" })

  get("/actors", { :controller => "actors" , :action => "index"})
  get("/actors/new", { :controller => "actors", :action => "new_form" })
  get("/actors/:id/edit", { :controller => "actors", :action => "edit_form" })
  get("/actors/:id",       { :controller => "actors", :action => "show" })
  get("/create_actor", { :controller => "actors", :action => "create_row" })
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })
  get("/update_actor/:id", { :controller => "actors", :action => "update_row" })

  get("/movies", { :controller => "movies" , :action => "index"})
  get("/movies/new", { :controller => "movies", :action => "new_form" })
  get("/movies/:id/edit", { :controller => "movies", :action => "edit_form" })
  get("/movies/:id",       { :controller => "movies", :action => "show" })
  get("/create_movie", { :controller => "movies", :action => "create_row" })
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })
  get("/update_movie/:id", { :controller => "movies", :action => "update_row" })

end
