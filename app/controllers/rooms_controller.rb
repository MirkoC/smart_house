class RoomsController < ApplicationController

  protect_from_forgery

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
    @temperatures = Temperature.where(room_id: @room.id)
    @doors = Door.where(room_id: @room.id)
    @data = {}
    @door_data = {}
    @doors.map do |d|
      @door_data[d.created_at] = d.value
    end
    @temperatures.map do |temp|
      @data[temp.created_at] = temp.value
    end
    @house = House.where(id: @room[:house_id]).take
  end

  def edit
    @room = Room.find(params[:id])
    @house = House.order(@room.house_id)
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
