class AddCampaigntaglineToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :campaigntagline, :text
  end
end
