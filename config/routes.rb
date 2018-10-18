Rails.application.routes.draw do

  get 'ideas_users/create'
  get 'ideas_users/destroy'
  get 'create/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/login" => "session#new"
    post "/login" => "session#create"
    delete "/login" => "session#destroy"

    post "/like/:id" => "users#add_like", as:"like"
    post "/unlike/:id" => "users#remove_like",  as: "unlike"


resources :users
resources :ideas
resources :comments


end
