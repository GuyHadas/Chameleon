class AddOnlinebannerToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :onlinebanner, :boolean
  end
end
