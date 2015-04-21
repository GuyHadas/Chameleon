class AddAttachmentCampaignonlinebannerToCampaigns < ActiveRecord::Migration
  def self.up
    change_table :campaigns do |t|
      t.attachment :campaignonlinebanner
    end
  end

  def self.down
    remove_attachment :campaigns, :campaignonlinebanner
  end
end
