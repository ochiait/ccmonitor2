class LessonsController < ApplicationController
    # データ作成の画面表示
  def new
    #lesson modelを空で生成し、@lessonというインスタンス変数に格納（箱を作る）
    @lesson = Lesson.new
  end
  # データを作成
  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.save
    render :thanks
  end
  
  def lesson_params
    params.require(:lesson).permit(:date, :start_time, :end_time, :name, :price, :name, :comment)
  end  
  
end
