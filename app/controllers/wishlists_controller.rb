class WishlistController < ApplicationController 
  before_action :set_wishlist, except: [:create]

  def create
    render json: wishlist,
      include: [:villagers]
  end 

  def show 
    render json: @wishlist,
      include: [:villagers]
  end 

  def update
    render json: @wishlist,
      include: [:villagers]
  end 

  private

  def wishlist_params 
    params.require(:wishlist).permit(:name, :villager_ids => [])
  end 

  def set_wishlist 
    @wishlist = Wishlist.find_by(id: params[:id])
  end 
end 