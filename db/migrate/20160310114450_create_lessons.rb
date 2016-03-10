class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.date :date , null: false
      t.datetime :start_time , null: false
      t.datetime :end_time , null: false
      t.string :name , null: false
      t.integer :price , null: false
      t.text :comment , null: false
      t.timestamps null: false
    end
  end
end
