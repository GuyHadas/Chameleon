class AddIsCompanyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :iscompany, :boolean
  end
end
