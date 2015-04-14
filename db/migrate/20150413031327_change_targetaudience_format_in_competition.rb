class ChangeTargetaudienceFormatInCompetition < ActiveRecord::Migration
  def up
    change_column :competitions, :targetaudience, :text
  end

  def down
    change_column :competitions, :targetaudience, :string
  end
end
