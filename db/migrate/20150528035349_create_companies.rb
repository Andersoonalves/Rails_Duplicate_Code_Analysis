class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :numberOfEmployess
      t.date :creation

      t.timestamps null: false
    end
  end
end
