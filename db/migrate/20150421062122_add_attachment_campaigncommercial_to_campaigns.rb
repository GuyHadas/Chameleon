class AddAttachmentCampaigncommercialToCampaigns < ActiveRecord::Migration
  def self.up
    change_table :campaigns do |t|
      t.attachment :campaigncommercial
    end
  end

  def self.down
    remove_attachment :campaigns, :campaigncommercial
  end
end
