class WishlistController < ApplicationController 
  before_action :set_wishlist, except: [:create]

  def create
    wishlist = Wishlist.new(wishlist_params)

    if wishlist.save 
      render json: wishlist,
      include: [:villagers],
      status: :created
    else 
      render json: wishlist.errors, status: :unprocessable_entity
    end 
  end 

  def show 
    render json: @wishlist,
      include: [:villagers]
  end 

  # def update
  #   if @wishlist.update(wishlist_params)
  #     render json: @wishlist,
  #       include: [:villagers]
  #   else 
  #     render json: @wishlist.errors, status: :unprocessable_entity
  #   end 
  # end 

  def destroy
    @wishlist.destroy
  end 

  private

  def wishlist_params 
    params.require(:wishlist).permit(:name, :villager_ids => [])
  end 

  def set_wishlist 
    @wishlist = Wishlist.find_by(id: params[:id])
  end 
end 