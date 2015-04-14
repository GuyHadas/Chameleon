class AddEndDateToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :enddate, :date
  end
end
