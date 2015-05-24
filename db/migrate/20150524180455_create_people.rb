class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :address

      t.timestamps null: false
    end
  end
end
