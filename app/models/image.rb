class Image < ActiveRecord::Base
 
  belongs_to :imageable, polymorphic: true
  
  has_attached_file :foto, :styles => {:large => "800x800>",
                                       :medium => "400x400>",
                                       :small => "250x250>",   
                                       :thumb => "100x100>" },
                                       :default_url => "/images/:style/:missing.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
