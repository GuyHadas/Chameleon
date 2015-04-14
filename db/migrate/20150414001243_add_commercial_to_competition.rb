class AddCommercialToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :commercial, :boolean
  end
end
