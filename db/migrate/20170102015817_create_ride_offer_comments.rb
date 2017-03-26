class CreateRideOfferComments < ActiveRecord::Migration
  def change
    create_table :ride_offer_comments do |t|
      t.string :user_name
      t.text :body
      t.integer :ride_offer_id

      t.timestamps null: false
    end
  end
end
