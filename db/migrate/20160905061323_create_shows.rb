class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.datetime :time

      t.timestamps null: false
    end
  end
end
