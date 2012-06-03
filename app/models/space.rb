class Space < ActiveRecord::Base
  attr_accessible :name, :description, :published, :contact, :capacity, :benefit, :goodwill, :long_description, :satisfaction, :formality, :archived, :address, :city, :state, :zip, :photo
  
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
