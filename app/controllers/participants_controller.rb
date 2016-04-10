# == Schema Information
#
# Table name: participants
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  email      :string           not null
#  tel        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lesson_id  :integer
#

class ParticipantsController < ApplicationController
  def new
    #participant modelを空で生成し、@participantというインスタンス変数に格納（箱を作る）
    @participant = Participant.new
    @participant.lesson_id = params[:lesson_id]
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
    params.require(:participant).permit(:name, :email, :tel, :lesson_id)
  end

end
