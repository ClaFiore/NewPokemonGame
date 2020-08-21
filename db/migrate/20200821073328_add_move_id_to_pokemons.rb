class AddMoveIdToPokemons < ActiveRecord::Migration[6.0]
  def change
    add_column :pokemons, :move_id, :integer
  end
end
