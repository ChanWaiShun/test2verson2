class ChangeDataTypeForLatitude < ActiveRecord::Migration
  def change
    change_column :testgmaps, :latitude, :float
    change_column :testgmaps, :longitude, :float
  end
end
