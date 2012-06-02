class Match < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :idea
  belongs_to :space
end
