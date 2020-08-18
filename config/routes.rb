Rails.application.routes.draw do
  get 'battles/new'
  get 'battles/create'
  get 'battles/show'
  resources :pokemons, only: [:index, :show]
  resources :battles, only: [:show, :new, :create]

  get "/", to: "static#home", as: "home"
end
