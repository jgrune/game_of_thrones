class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    House.create!(house_params)
    redirect_to houses_path
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)
    redirect_to @house
  end

private

  def house_params
    params.require(:house).permit(:name, :motto, :region, :photo_url)
  end

end
