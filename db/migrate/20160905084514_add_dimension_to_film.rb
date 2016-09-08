class AddDimensionToFilm < ActiveRecord::Migration
  def change
    add_column :films, :dimension, :string
  end
end
