class ProfileContent < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :phone

  belongs_to :profile
end
