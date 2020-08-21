class AddPokemonIdToMoveSets < ActiveRecord::Migration[6.0]
  def change
    add_column :move_sets, :pokemon_id, :integer
  end
end
