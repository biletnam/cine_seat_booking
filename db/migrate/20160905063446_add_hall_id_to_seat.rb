class AddHallIdToSeat < ActiveRecord::Migration
  def change
    add_column :seats, :hall_id, :integer
  end
end
