class Idea < ActiveRecord::Base
  attr_accessible :name, :description, :success_criteria, :goodwill
  has_many :matches

  validates :name, :presence => true
  validates :description, :presence => true

end
