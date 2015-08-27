class TemperaturesController < ApplicationController
  protect_from_forgery

  def create
    @temperature = Temperature.new(temperature_params)
    @temperature.save
    render :show
  end

  def show
    @temperature = Temperature.find(params[:id])
  end

  private
  def temperature_params
    params.permit(:value, :room_id)
  end
end
