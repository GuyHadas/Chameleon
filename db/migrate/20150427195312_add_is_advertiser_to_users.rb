class AddIsAdvertiserToUsers < ActiveRecord::Migration
  def change
    add_column :users, :isadvertiser, :boolean
  end
end
