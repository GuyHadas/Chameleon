class Competition < ActiveRecord::Base
  has_attached_file :image, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


  belongs_to :user
  has_many :campaigns, dependent: :destroy


  validates :brandname, presence: true
  validates :companydescription, presence: true
  validates :targetaudience, presence:true
  validates :campaigntone, presence:true
  validates :campaignbudget, presence:true
  validates :begindate, presence:true
  validates :enddate, presence:true
  validates :brief, presence:true
  validates :campaignbudget, presence:true, numericality: true
  validates :user_id, presence:true

  def campaignbudget=(num)
  self[:campaignbudget] = num.to_s.scan(/\b-?[\d.]+/).join.to_f
  end



end
