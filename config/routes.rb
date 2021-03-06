Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch "pokemons/capture", to: "pokemons#capture", as: "capture"
  patch "pokemons/damage", to: "pokemons#damage", as: "damage"
  patch "pokemons/heal", to: "pokemons#heal", as: "heal"
  get 'pokemons/new', to: 'pokemons#new'
  post 'pokemons/create', to: 'pokemons#create', as: "create"
end
