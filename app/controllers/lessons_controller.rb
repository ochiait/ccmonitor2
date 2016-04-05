# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  date       :date             not null
#  start_time :datetime         not null
#  end_time   :datetime         not null
#  name       :string           not null
#  price      :integer          not null
#  comment    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  teacher_id :srting
#  capacity   :integer
#

class LessonsController < ApplicationController
    # データ作成の画面表示
  def new
    #lesson modelを空で生成し、@lessonというインスタンス変数に格納（箱を作る）
    @lesson = Lesson.new
  end
  # データを作成
  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.teacher_id = session[:teacher_id]
    @lesson.save
    render :thanks
  end
    # 一覧表示
  def index
    @lessons = Lesson.where(teacher_id: session[:teacher_id])
    @participants = Participant.where(lesson_id: params[:id])
  end
    # レッスン詳細画面
  def show
    @lesson = Lesson.find(params[:id])
    @participants = Participant.where(lesson_id: params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:date, :start_time, :end_time, :name, :price, :comment)
  end  
  
end
