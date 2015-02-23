class Room < ActiveRecord::Base
  has_many :meetings
  has_attached_file :room_image, :styles => { :large => "300x300>",
                                              :medium => "200x200>",
                                              :thumb => "100x100>" },
                                              :default_url => "/images/:style/missing.png",
                                              :url =>':s3_domain_url',
                                              :path => '/:class/:attachment/:id_partition/:style/:filename'
  validates_attachment_content_type :room_image, :content_type => /\Aimage\/.*\Z/
  paginates_per 4


end
