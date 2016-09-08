class RenameTypeInHallToHallType < ActiveRecord::Migration
  def change
  	rename_column :halls, :type, :hall_type
  end
end
