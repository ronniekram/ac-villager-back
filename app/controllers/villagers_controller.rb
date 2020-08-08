class VillagersController < ApplicationController 
  before_action :set_villager, except: [:create]
  def index 
    villagers = Villager.all
    render json: villagers
  end 

  def create
    render json: villager
  end 

  def show 
    render json: @villager
  end 

  def destroy
    @villager.destroy
  end 

  private 

  def villager_params 
    params.require(:villager).permit(:name,
      :image,
      :gender,
      :personality, 
      :species,
      :birthday,
      :sign)
  end 

  def set_villager
    @villager = Villager.find_by(id: params[:id])
  end 
end 