class CreateHalls < ActiveRecord::Migration
  def change
    create_table :halls do |t|
      t.string :hall_name
      t.string :type

      t.timestamps null: false
    end
  end
end
