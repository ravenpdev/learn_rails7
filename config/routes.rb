Rails.application.routes.draw do
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create]
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "secret", to: "pages#secret"

  # get "articles", to: "articles#index"
  # get "articles/:id", to: "articles#show", as: "article"
  resources :articles do
    resources :comments
  end

  # Defines the root path route ("/")
  root "pages#home"
end
