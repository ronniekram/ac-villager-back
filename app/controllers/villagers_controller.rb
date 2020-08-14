class VillagersController < ApplicationController 
  
  def index 
    @villagers = Villager.all
    render json: @villagers
  end 

  def show 
    @villager = Villager.find_by(id: params[:id])
    render json: @villager
  end 

  def update
    @villager = Villager.find_by(id: params[:id])
    @villager.update(:island_id)
    if @villager.save
      render json: @villager
    end 
  end 

  private 

  def villager_params 
    params.require(:villager).permit(:name,
      :image,
      :gender,
      :personality, 
      :species,
      :birthday,
      :island_id)
  end 

end 