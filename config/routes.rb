Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch "/capture", to: 'pokemon#capture'
  patch "/damage", to: 'pokemon#damage'
  resources :trainers
  get "/pokemon/new", to: 'pokemon#new'
  patch "/pokemon/new", to: 'pokemon#update', as: 'new_pokemon'

end
