class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end
  
  def destroy
    @pokemon = Pokemon.find(params[:id])
    Pokemon.reset_health(@pokemon)
    redirect_to home_path
  end
end
