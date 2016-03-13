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
    @lesson.save
    render :thanks
  end
  
  def lesson_params
    params.require(:lesson).permit(:date, :start_time, :end_time, :name, :price, :name, :comment)
  end  
  
end
