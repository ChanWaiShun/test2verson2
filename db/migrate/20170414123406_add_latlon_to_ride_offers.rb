class AddLatlonToRideOffers < ActiveRecord::Migration
  def change
    add_column :ride_offers, :latitude, :float
    add_column :ride_offers, :longitude, :float
  end
end
