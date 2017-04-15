class ChanheDataTypeForRideOffer < ActiveRecord::Migration
  def change
    change_column :ride_offers, :time, :string
  end
end
