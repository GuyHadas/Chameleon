class AddGuerrillaToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :guerrilla, :boolean
  end
end
