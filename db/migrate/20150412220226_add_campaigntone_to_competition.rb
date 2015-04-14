class AddCampaigntoneToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :campaigntone, :string
  end
end
