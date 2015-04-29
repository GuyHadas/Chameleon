class Campaign < ActiveRecord::Base
  belongs_to :competition
  belongs_to :user

  has_attached_file :campaignprint, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :campaignprint, :content_type => /\Aimage\/.*\Z/

  has_attached_file :campaignsocialmedia, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :campaignsocialmedia, :content_type => /\Aimage\/.*\Z/

  has_attached_file :campaignguerrilla, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :campaignguerrilla, :content_type => /\Aimage\/.*\Z/

  has_attached_file :campaignmobile, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :campaignmobile, :content_type => /\Aimage\/.*\Z/

  has_attached_file :campaignonlinebanner, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :campaignonlinebanner, :content_type => /\Aimage\/.*\Z/

  has_attached_file :campaignoutofhome, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :campaignoutofhome, :content_type => /\Aimage\/.*\Z/

  has_attached_file :campaignradio, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :campaignradio, :content_type => /\Aimage\/.*\Z/

  has_attached_file :campaigncoverphoto, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :campaigncoverphoto, :content_type => /\Aimage\/.*\Z/

  has_attached_file :campaigncommercial
  validates_attachment_content_type :campaigncommercial, :content_type => ["video/mp4", "video.mov", "video/mpeg","video/mpeg4", "image/jpg", "image/jpeg", "image/png", "image/gif"]


  validates :competition_id, presence: true
end
