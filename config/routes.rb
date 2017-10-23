Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch 'capture', to: "pokemons#capture", as: "capture"
  patch 'damage', to: "pokemons#damage", as: "damage"
  get 'new', to: "pokemons#new", as: "new_pokemon"
  get "trainers/:id", to: "trainers#show", as: "trainer"
  resources :trainers
  resources :pokemons
end
