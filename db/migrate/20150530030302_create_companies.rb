class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :numberOfEmployees
      t.float :number
      t.string :cnpj
      t.text :adress
      t.decimal :zipCode

      t.timestamps null: false
    end
  end
end
