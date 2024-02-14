Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "director_home" })
  get("/directors/youngest", { :controller => "directors", :action => "director_youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "director_eldest" })
  get("/directors/:the_id", { :controller => "directors", :action => "show" })

  get("/movies", { :controller => "movies", :action => "movie_home" })
  get("/movies/:the_id", { :controller => "movies", :action => "show" })

  get("/actors", { :controller => "actors", :action => "actor_home" })
  get("/actors/:the_id", { :controller => "actors", :action => "show" })
end
