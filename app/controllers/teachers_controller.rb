class TeachersController < ApplicationController
  # データ作成の画面表示
  def new
    #Teacherクラス（model）を空で生成し、@teacherというインスタンス変数に格納（箱を作る）
    @teacher = Teacher.new
  end
  # データを作成
  def create
  end
end
