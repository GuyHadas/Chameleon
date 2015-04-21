class AddAttachmentCampaignmobileToCampaigns < ActiveRecord::Migration
  def self.up
    change_table :campaigns do |t|
      t.attachment :campaignmobile
    end
  end

  def self.down
    remove_attachment :campaigns, :campaignmobile
  end
end
