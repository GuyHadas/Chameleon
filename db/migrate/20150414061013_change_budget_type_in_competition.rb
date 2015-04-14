class ChangeBudgetTypeInCompetition < ActiveRecord::Migration
  def self.up
    change_column :competitions, :budget, :float
  end

  def self.down
    change_column :competitions, :budget, :integer
  end
end
