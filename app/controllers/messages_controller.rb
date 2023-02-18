class MessagesController < ApplicationController

  def create
    @message = Message.create(content: params["content"], user_id: current_user.id, room_id: @room)
  end

  def show
    @room = Room.find(params[:single_room])
    @messages = Message.where(room_id: @room)
  end
end
