class LoginsController < ApplicationController
  def show
      render "new"
  end

  def create
    teacher = Teacher.find_by_email params[:email]
    if teacher && teacher.authenticate(params[:pass])
      # セッションのキー:teacher_idへ先生のIDを登録
      session[:teacher_id] = teacher.id
      redirect_to '/lessons/index'
    else
      # flash変数にメッセージをセット
      flash.now.alert = "もう一度入力してください。"
      render "new"
    end
  end

  def destroy
    session[:teacher_id] = nil
    @current_teacher = nil
    redirect_to login_path
  end
end