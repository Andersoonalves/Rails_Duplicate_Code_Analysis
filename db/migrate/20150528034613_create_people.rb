class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.float :salary
      t.integer :cpf
      t.boolean :address

      t.timestamps null: false
    end
  end
end
