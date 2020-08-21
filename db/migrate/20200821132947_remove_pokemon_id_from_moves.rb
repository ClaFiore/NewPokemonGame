class RemovePokemonIdFromMoves < ActiveRecord::Migration[6.0]
  def change
    remove_column :moves, :pokemon_id, :integer
  end
end
