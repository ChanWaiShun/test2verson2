class RemoveAddress2FromTestgmaps < ActiveRecord::Migration
  def change
    remove_column :testgmaps, :address2
    remove_column :testgmaps, :latitude2
    remove_column :testgmaps, :longitude2
  end
end
