class LessonsForParticipantsController < ApplicationController
  def index
    @lessons = Lesson.all
  end
end
