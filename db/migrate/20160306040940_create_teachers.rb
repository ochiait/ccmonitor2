class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :tel
      t.timestamps null: false
    end
  end
end
