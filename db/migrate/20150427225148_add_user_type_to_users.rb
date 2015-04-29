class AddUserTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :usertype, :boolean
  end
end
