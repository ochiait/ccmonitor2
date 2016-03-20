class ParticipantsController < ApplicationController
  # 参加者の一覧表示
  def index
    @participants = Participant.all
  end
  def new
    #participant modelを空で生成し、@participantというインスタンス変数に格納（箱を作る）
    @participant = Participant.new
    #lessonコントローラーからデータを呼び出し
    @lesson = Lesson.find(params[:lesson_id])
  end
  # データを作成
  def create
    @participant = Participant.new(participant_params)
    @participant.save
    render :thanks
  end
  
  def participant_params
    params.require(:participant).permit(:name, :email, :tel)
  end

end
