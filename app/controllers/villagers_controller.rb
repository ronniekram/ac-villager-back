class VillagersController < ApplicationController 
  
  def index 
    @villagers = Villager.all
    render json: @villagers
  end 

  # def create
  #   @villager = Villager.new(villager_params)

  #   if @villager.save 
  #     render json: @villager, 
  #     status: :created
  #   else 
  #     render json: @villager.errors, status: :unprocessable_entity
  #   end 
  # end 

  def show 
    @villager = Villager.find_by(id: params[:id])
    render json: @villager
  end 

  # def search 
  #   @villager = Villager.find_by(name: params[:name])
  #   render json: @villager
  # end 

  # def destroy
  #   @villager = Villager.find_by(id: params[:id])
  #   @villager.destroy
  # end 

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