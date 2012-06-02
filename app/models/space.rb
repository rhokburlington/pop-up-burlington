class Space < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :matches
end
