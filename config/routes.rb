Rails.application.routes.draw do
  get 'battles/new'
  get 'battles/create'
  get 'battles/show'
  resources :pokemons, only: [:index, :show, :destroy]
  resources :battles, only: [:show, :new, :create]
  get "/attack", to: "battles#attack", as: "attack"
  get "/counterattack", to: "battles#counterattack", as: "counterattack"
  get "/", to: "static#home", as: "home"
  
end
