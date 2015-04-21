class AddAttachmentCampaignprintToCampaigns < ActiveRecord::Migration
  def self.up
    change_table :campaigns do |t|
      t.attachment :campaignprint
    end
  end

  def self.down
    remove_attachment :campaigns, :campaignprint
  end
end
