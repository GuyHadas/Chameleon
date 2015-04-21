class AddCompetitionIdToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :competition_id, :integer
    add_index :campaigns, :competition_id
  end
end
