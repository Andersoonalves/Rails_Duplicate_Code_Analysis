class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.text :address

      t.timestamps null: false
    end
  end
end
