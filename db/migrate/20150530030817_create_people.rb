class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.date :age
      t.boolean :cel
      t.datetime :birthday
      t.text :name
      t.decimal :salary

      t.timestamps null: false
    end
  end
end
