class AddBriefToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :brief, :text
  end
end
