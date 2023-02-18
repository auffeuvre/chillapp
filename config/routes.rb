Rails.application.routes.draw do
  get 'rooms/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'rooms#index'

  resources :users, :rooms, only: [:create, :show]
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"

  get 'messages/:single_room', to: 'messages#show'
  resources :messages do
    resources :messages, path: '/'
  end

end
