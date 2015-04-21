class AddAttachmentCampaignradioToCampaigns < ActiveRecord::Migration
  def self.up
    change_table :campaigns do |t|
      t.attachment :campaignradio
    end
  end

  def self.down
    remove_attachment :campaigns, :campaignradio
  end
end
