class AddFilmIdToShow < ActiveRecord::Migration
  def change
    add_column :shows, :film_id, :integer
  end
end
