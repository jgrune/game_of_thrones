class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @char = Character.find(params[:id])
  end

  def new
    @char = Character.new
    @houses = House.all.map {|house| [house.name, house.id]}
  end

  def create
    newChar = Character.new(character_params)
    newChar.house_id = params[:house_id]
    newChar.save!
    redirect_to characters_path
  end

  def destroy
    @char = Character.find(params[:id])
    @char.destroy
    redirect_to characters_path
  end

  def edit
    @char = Character.find(params[:id])
    @houses = House.all.map {|house| [house.name, house.id]}
  end

  def update
    @char = Character.find(params[:id])
    @char.update!(character_params)
    redirect_to @char
  end

  private
  def character_params
    params.require(:character).permit(:name, :age, :image_url, :house_id)
  end

end
