class AddImageToTrainers < ActiveRecord::Migration[6.0]
  def change
    add_column :trainers, :image, :string
  end
end
