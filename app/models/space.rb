class Space < ActiveRecord::Base
  attr_accessible :name, :description, :published, :contact, :capacity, :benefit, :goodwill, :long_description, :satisfaction, :formality, :archived
  
  has_many :matches, :dependent => :destroy

end
