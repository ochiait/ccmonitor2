class AddCapacityToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :capacity, :integer
  end
end
