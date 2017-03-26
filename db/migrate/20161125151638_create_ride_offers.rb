class CreateRideOffers < ActiveRecord::Migration
  def change
    create_table :ride_offers do |t|
      t.string :role
      t.string :source
      t.string :destination
      t.string :date
      t.integer :time

      t.timestamps null: false
    end
  end
end
