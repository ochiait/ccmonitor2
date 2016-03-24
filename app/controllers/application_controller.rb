class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_teacher
    if session[:teacher_id]
      # @current_teacherがnilかfalseならログインユーザーを代入
      @current_teacher ||= Teacher.find(session[:teacher_id])
    end
  end

  helper_method :current_teacher
end