class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :address

      t.timestamps null: false
    end
  end
end