class CreateMoveSets < ActiveRecord::Migration[6.0]
  def change
    create_table :move_sets do |t|

      t.timestamps
    end
  end
end
