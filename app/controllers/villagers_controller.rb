class VillagersController < ApplicationController 
  
  def index 
    @villagers = Villager.all
    render json: @villagers
  end 

  def show 
    @villager = Villager.find_by(id: params[:id])
    render json: @villager
  end 

  private 

  def villager_params 
    params.require(:villager).permit(:name,
      :image,
      :gender,
      :personality, 
      :species,
      :birthday)
  end 

end 