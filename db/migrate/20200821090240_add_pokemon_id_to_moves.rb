class AddPokemonIdToMoves < ActiveRecord::Migration[6.0]
  def change
    add_column :moves, :pokemon_ids, integer:, array: true, default: []
  end

  end
end
