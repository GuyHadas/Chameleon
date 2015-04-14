class ChangeCompanydescriptionFormatInCompetition < ActiveRecord::Migration
  def up
    change_column :competitions, :companydescription, :text
  end

  def down
    change_column :competitions, :companydescription, :string
  end
end
