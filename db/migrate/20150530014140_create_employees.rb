class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.datetime :data

      t.timestamps null: false
    end
  end
end
