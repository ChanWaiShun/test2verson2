class RideOfferComment < ActiveRecord::Base

  validates_presence_of :user_name
  validates_presence_of :body

  belongs_to :ride_offer
end
