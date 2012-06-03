class Match < ActiveRecord::Base
  attr_accessible :space_id, :idea_id, :published, :archived, :start_datetime, :end_datetime, :url, :comments
  belongs_to :idea
  belongs_to :space

end
