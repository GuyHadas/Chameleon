class AddTargetaudienceToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :targetaudience, :string
  end
end
