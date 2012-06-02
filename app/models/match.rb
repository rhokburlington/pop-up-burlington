class Match < ActiveRecord::Base
  attr_accessible :space_id, :idea_id
  belongs_to :idea
  belongs_to :space
end
