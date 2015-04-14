class ChangeCampaigntoneFormatInCompetition < ActiveRecord::Migration
  def up
    change_column :competitions, :campaigntone, :text
  end

  def down
    change_column :competitions, :campaigntone, :string
  end
end
