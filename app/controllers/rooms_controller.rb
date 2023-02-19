class RoomsController < ApplicationController
  def index
    @current_user = current_user
    redirect_to '/login' unless @current_user
    @rooms = Room.all
    @users = User.all_except(@current_user)
    @room = Room.new
  end

  def create
    @room = Room.create(name: params["room"]["name"])
  end
end
