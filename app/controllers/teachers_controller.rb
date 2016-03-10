class TeachersController < ApplicationController
  # データ作成の画面表示
  def new
    #Teacher modelを空で生成し、@teacherというインスタンス変数に格納（箱を作る）
    @teacher = Teacher.new
  end
  # データを作成
  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.save
    render :thanks
  end
  
  def teacher_params
    params.require(:teacher).permit(:name, :email, :password, :tel)
  end  
end
