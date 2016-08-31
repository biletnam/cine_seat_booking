class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.boolean :free
      t.boolean :reserved
      t.boolean :selected

      t.timestamps null: false
    end
  end
end
