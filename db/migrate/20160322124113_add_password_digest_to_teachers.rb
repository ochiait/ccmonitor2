class AddPasswordDigestToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :password_digest, :srting
  end
end
