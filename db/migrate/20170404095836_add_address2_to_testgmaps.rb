class AddAddress2ToTestgmaps < ActiveRecord::Migration
  def change
    add_column :testgmaps, :address2, :string
    add_column :testgmaps, :latitude2, :float
    add_column :testgmaps, :longitude2, :float
  end
end
