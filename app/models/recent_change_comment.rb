class RecentChangeComment < ActiveRecord::Base

  validates_presence_of :user_name
  validates_presence_of :body

  belongs_to :recent_change
end
