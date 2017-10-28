Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch "home/index", to: "pokemons#capture", as: "capture"
  patch "damage", to: "pokemons#damage", as: "damage"

  post '/', to: 'pokemons#capture'
  post '/pokemons', to: 'pokemons#create'
  get '/pokemons/new', to: 'pokemons#new'
end
