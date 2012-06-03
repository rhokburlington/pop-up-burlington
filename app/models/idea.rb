class Idea < ActiveRecord::Base
  attr_accessible :name, :description, :success_criteria, :goodwill, :logistics, :features, :formality, :capacity, :contact, :published, :archived
  
  has_many :matches, :dependent => :destroy

end
