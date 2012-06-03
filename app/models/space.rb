class Space < ActiveRecord::Base
  attr_accessible :name, :description, :published, :contact, :capacity, :benefit, :goodwill, :long_description, :satisfaction, :formality, :archived, :address, :city, :state, :zip
  
  has_many :matches, :dependent => :destroy

end
