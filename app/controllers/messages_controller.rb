class MessagesController < ApplicationController
  def show
    @room = Room.find(params[:single_room])
    @messages = Message.where(room_id: @room)
  end

  def create
    @message = Message.create(content: params["content"], user_id: current_user.id, room_id: params["room_id"])
  end

end
