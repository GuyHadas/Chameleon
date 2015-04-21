class AddAttachmentCampaignsocialmediaToCampaigns < ActiveRecord::Migration
  def self.up
    change_table :campaigns do |t|
      t.attachment :campaignsocialmedia
    end
  end

  def self.down
    remove_attachment :campaigns, :campaignsocialmedia
  end
end
