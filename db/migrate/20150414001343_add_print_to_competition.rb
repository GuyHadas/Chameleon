class AddPrintToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :print, :boolean
  end
end
