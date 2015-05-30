class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :quantity

      t.timestamps null: false
    end
  end
end
