class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name , null: false
      t.string :email , null: false
      t.string :password , null: false
      t.string :tel , null: false
      t.timestamps null: false
    end
  end
end
ra