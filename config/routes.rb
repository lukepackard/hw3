Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#get "/places", :controller => "places", :action => "index"
resources :places
  # Defines the root path route ("/")
 #get "/entries", :controller => "entries", :action => "index"
resources :entries
  # get("/", { :controller => "articles", :action => "index" })
end
