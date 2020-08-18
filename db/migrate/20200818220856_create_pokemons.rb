class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.integer :type_id
      t.integer :trainer_id
      t.string :species
      t.integer :speed
      t.integer :attack
      t.integer :hp
      t.integer :defence

      t.timestamps
    end
  end
end
