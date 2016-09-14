class AddFilmIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :film_id, :integer
  end
end
