class IslandsController < ApplicationController 
before_action :set_island, except: [:create]

  def create
    render json: island, 
      include: [:villagers]
  end 

  def show
    render json: @island, 
      include: [:villagers]
  end 

  def update
    render json: @island, 
      include: [:villagers]
  end 

  private
  
  def island_params 
    params.require(:island).permit(:name, :num_of_villagers, :villager_ids => [])
  end 

  def set_island
    @island = Island.find_by(id: params[:id])
  end 
end 