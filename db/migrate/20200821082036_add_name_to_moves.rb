class AddNameToMoves < ActiveRecord::Migration[6.0]
  def change
    add_column :moves, :name, :string
  end
end
