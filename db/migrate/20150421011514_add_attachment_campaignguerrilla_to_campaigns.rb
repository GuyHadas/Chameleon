class AddAttachmentCampaignguerrillaToCampaigns < ActiveRecord::Migration
  def self.up
    change_table :campaigns do |t|
      t.attachment :campaignguerrilla
    end
  end

  def self.down
    remove_attachment :campaigns, :campaignguerrilla
  end
end
