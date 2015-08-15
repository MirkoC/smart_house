class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    @house.save
    render :show
  end

  def show
    @house = House.find(params[:id])
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)
    render :show
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    render :show
  end

  private

  def house_params
    params.require(:house).permit(:name, :street_address, :city, :state, :region, :country, :postal_code, :owner)
  end
end
