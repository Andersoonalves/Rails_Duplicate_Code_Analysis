class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :address

      t.timestamps null: false
    end
  end
end
