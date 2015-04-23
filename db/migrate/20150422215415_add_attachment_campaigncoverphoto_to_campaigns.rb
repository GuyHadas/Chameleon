class AddAttachmentCampaigncoverphotoToCampaigns < ActiveRecord::Migration
  def self.up
    change_table :campaigns do |t|
      t.attachment :campaigncoverphoto
    end
  end

  def self.down
    remove_attachment :campaigns, :campaigncoverphoto
  end
end
