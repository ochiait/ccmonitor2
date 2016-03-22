class AddLessonIdToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :lesson_id, :integer
  end
end
