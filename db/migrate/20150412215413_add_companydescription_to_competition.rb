class AddCompanydescriptionToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :companydescription, :string
  end
end
