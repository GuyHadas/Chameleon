class AddMobileToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :mobile, :boolean
  end
end
