class AddSocialmediaToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :socialmedia, :boolean
  end
end
