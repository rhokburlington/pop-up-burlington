class Idea < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :matches

  validates :name, :presence => true
  validates :description, :presence => true

end
