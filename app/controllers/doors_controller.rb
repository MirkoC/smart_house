class DoorsController < ApplicationController

  def create
    @door = Door.new(doors_params)
    @door.save
    render :show
  end

  def show
    @door = Door.find(params[:id])
  end

  private
  def doors_params
    params.permit(:value, :room_id)
  end

end
