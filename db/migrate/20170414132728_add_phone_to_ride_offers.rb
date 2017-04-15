class AddPhoneToRideOffers < ActiveRecord::Migration
  def change
    add_column :ride_offers, :phone, :string
  end
end
