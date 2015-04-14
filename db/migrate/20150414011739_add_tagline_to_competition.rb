class AddTaglineToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :tagline, :boolean
  end
end
