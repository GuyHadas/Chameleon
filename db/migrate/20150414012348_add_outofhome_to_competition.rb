class AddOutofhomeToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :outofhome, :boolean
  end
end
