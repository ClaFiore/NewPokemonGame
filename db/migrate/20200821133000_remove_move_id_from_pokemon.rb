class RemoveMoveIdFromPokemon < ActiveRecord::Migration[6.0]
  def change
    remove_column :pokemons, :move_id, :integer
  end
end
