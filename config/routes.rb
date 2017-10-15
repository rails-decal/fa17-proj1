Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers

  patch "capture", to: "pokemons#capture", as: :capture
  patch "damage", to: "pokemons#damage", as: :damage
  patch "heal", to: "pokemons#heal", as: :heal


  get "/trainers/:id/new", to: "pokemons#new", as: "new_pokemons"
  post "/trainers/:id/new", to: "pokemons#create", as: "create_pokemons"
end
