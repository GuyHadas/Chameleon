class AddBrandnameToCompetition < ActiveRecord::Migration
  def change
    add_column :competitions, :brandname, :string
  end
end
