class IslandsController < ApplicationController 
before_action :set_island, except: [:create]

  def create
    island = Island.new(island_params)
    if island.save
      render json: island, 
        include: [:villagers],
        status: :created
    else 
      render json: island.errors, status: :unprocessable_entity
    end 
  end 

  def show
    render json: @island, 
      include: [:villagers]
  end 

  def update
    if @island.update(island_params)
      render json: @island, 
        include: [:villagers]
    else 
      render json: @island.errors,
        status: :unprocessable_entity
    end 
  end 

  private
  
  def island_params 
    params.require(:island).permit(:name, :num_of_villagers, :villager_ids => [])
  end 

  def set_island
    @island = Island.find_by(id: params[:id])
  end 
end 