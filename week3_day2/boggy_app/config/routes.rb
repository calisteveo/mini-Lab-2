BoggyApp::Application.routes.draw do
  
  root to: "creatures#index"

  # first is the path/route name then to controller: method
  get "/creatures", to: "creatures#index"

  # define a route for making a new creature
  get "/creatures/new", to: "creatures#new" 

  # get one particular creature
  get "/creatures/:id", to: "creatures#show"

  # get one particular creature to edit
  get "/creatures/:id/edit", to: "creatures#edit"

  post "/creatures", to: "creatures#create"

  put "/creatures/:id", to: "creatures#update"
end
