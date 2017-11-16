Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers do
    member do
      get :pokemons
    end
  end
  resources :pokemons, only: [:new, :create]

  patch 'capture', to: 'pokemons#capture', as: 'capture'
  patch 'damage', to: 'pokemons#damage', as: 'damage'
end
