class RideOffer < ActiveRecord::Base


  geocoded_by :source
  after_validation :geocode

  validates_format_of :phone, :with => /\d{8}/, :message => "  must be formed by  8  numbers"
  validates_format_of :time, :with => /\d{2}\:\d{2}/, :message => " must be in the following format: hh/mm"
  validates_format_of :date, :with => /\d{2}\/\d{2}\/\d{4}/, :message => " must be in the following format: mm/dd/yyyy"

  belongs_to :user
  has_many :ride_offer_comments
end
