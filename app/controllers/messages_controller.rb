class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
  end
  # 本来新規投稿ページはnewだが一覧ページに投稿フォームがあるのでindexがインスタンス変数を生成している
  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room)
    else
      render: :index
  end

  private
  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

end
