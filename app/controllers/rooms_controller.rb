class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
    @houses = House.order(:name)
  end

  def create
    @room = Room.new(room_params)
    @room.save
    render :show
  end

  def show
    @room = Room.find(params[:id])
    @house = House.where(id: @room[:house_id]).take
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    @room.update(room_params)
    render :show
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    render :show
  end

  private

  def room_params
    params.require(:room).permit(:name, :house_id)
  end

end
