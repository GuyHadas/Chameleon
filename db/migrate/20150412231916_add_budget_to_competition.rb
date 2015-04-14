class AddBudgetToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :budget, :integer
  end
end
