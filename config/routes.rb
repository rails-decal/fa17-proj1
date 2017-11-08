Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch "home/index", to: "pokemons#capture", as: "capture"
  patch "trainers/show.html.erb", to: "pokemons#damage", as: "damage"
  get "pokemons/new", to: "pokemons#new", as: "new"
  resources :pokemons, only: [:new, :create, :index]
  post "pokemons/new", to: "pokemons#create"
end
