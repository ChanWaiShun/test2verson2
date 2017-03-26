class RideOffer < ActiveRecord::Base


  validates_numericality_of :time, :greater_than => 0
  validates_format_of :date, :with => /\d{2}\/\d{2}\/\d{4}/, :message => " must be in the following format: mm/dd/yyyy"

  belongs_to :user
  has_many :ride_offer_comments
end
