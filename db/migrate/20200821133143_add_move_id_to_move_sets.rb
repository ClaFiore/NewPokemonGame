class AddMoveIdToMoveSets < ActiveRecord::Migration[6.0]
  def change
    add_column :move_sets, :move_id, :integer
  end
end
