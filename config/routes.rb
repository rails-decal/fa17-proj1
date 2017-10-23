Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch "/capture", to: 'pokemon#capture'
  resources :trainers
end
