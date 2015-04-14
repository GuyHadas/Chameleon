class AddCampaignbudgetToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :campaignbudget, :float
  end
end
