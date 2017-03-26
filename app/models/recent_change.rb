class RecentChange < ActiveRecord::Base

  validates_presence_of :version
  validates_presence_of :body
  validates_presence_of :title

  validates_format_of :date, :with => /\d{2}\/\d{2}\/\d{4}/, :message => " must be in the following format: mm/dd/yyyy"

  has_many :recent_change_comments
end
