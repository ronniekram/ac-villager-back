class IslandsController < ApplicationController 

  def index
    @islands = Island.all 
    render json: @islands
  end 

  def create
    @island = Island.new(island_params)
    if @island.save
      render json: @island, 
        include: [:villagers],
        status: :created
    else 
      render json: {error: 'Island not created.'}
    end 
  end 

  def show
    @island = Island.find_by(id: params[:id])
    render json: @island, 
      include: [:villagers]
  end 

  private
  
  def island_params 
    params.require(:island).permit(:name, :owner, :villager_ids => [])
  end 

end 