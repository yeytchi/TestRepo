class AddCoordinatesToMonument < ActiveRecord::Migration[5.2]
  def change
    add_column :monuments, :latitude, :float
    add_column :monuments, :longitude, :float
  end
end
