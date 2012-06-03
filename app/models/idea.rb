class Idea < ActiveRecord::Base
  attr_accessible :name, :description, :success_criteria, :goodwill, :logistics, :features, :formality, :capacity, :contact, :published, :archived, :photo, :photo_file_name
  
  has_many :matches, :dependent => :destroy

  has_attached_file :photo,
    :styles =>{
      :thumb  => "50x50>",
      :medium => "150x150>"
    },
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => "/:style/:id/:filename"

end
