class AddPasswordConfirmationToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :password_confirmation, :srting
  end
end
