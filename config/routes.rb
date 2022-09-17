Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"

  # Using the resouces :articles line I can comment out all the routes
  # I've written so far. Not sure how this works yet
  resources :articles do
    resources :comments
  end

  # get "/articles/:id/edit", to: "articles#edit"
  # get "/articles/new", to: "articles#new"
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show", as: :article
  # patch "articles/:id", to: "articles#update"
  # post "/articles", to: "articles#create"
  # delete "/articles/:id", to: "articles#destroy"

end
