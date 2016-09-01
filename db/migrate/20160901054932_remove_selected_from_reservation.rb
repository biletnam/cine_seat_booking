class RemoveSelectedFromReservation < ActiveRecord::Migration
  def change
    remove_column :reservations, :selected, :boolean
  end
end
