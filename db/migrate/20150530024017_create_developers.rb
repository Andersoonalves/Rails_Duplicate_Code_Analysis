class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :address

      t.timestamps null: false
    end
  end
end
