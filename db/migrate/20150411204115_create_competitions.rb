class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|

      t.timestamps
    end
  end
end
