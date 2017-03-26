class Forum < ActiveRecord::Base
  validates_presence_of :topic
  validates_presence_of :body
  has_many :forum_comments
  belongs_to :user
end
