class RemoveFreeFromReservation < ActiveRecord::Migration
  def change
    remove_column :reservations, :free, :boolean
  end
end
