class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.date :age

      t.timestamps null: false
    end
  end
end
