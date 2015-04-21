class AddAttachmentCampaignoutofhomeToCampaigns < ActiveRecord::Migration
  def self.up
    change_table :campaigns do |t|
      t.attachment :campaignoutofhome
    end
  end

  def self.down
    remove_attachment :campaigns, :campaignoutofhome
  end
end
