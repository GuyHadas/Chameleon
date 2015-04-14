class AddBeginDateToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :begindate, :date
  end
end
