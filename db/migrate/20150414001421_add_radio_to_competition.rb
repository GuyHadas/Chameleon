class AddRadioToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :radio, :boolean
  end
end
