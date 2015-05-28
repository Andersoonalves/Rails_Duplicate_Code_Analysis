class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :numberOfEmployess
      t.date :creation
      t.string :cnpj
      t.text :state

      t.timestamps null: false
    end
  end
end
