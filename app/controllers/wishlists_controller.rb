class WishlistController < ApplicationController 
  before_action :set_wishlist, except: [:create]

  def index 
    @wishlists = Wishlist.all 
    render json: @wishlists
  end 

  def create
    @wishlist = Wishlist.new(wishlist_params)

    if @wishlist.save 
      render json: @wishlist,
      status: :created
    else 
      render json: {error: 'Wishlist not created.'}
    end 
  end 

  def show 
    render json: @wishlist,
  end 

  def destroy
    @wishlist.destroy
  end 

  private

  def wishlist_params 
    params.require(:wishlist).permit(:name, :owner, :villager_ids => [])
  end 

  def set_wishlist 
    @wishlist = Wishlist.find_by(id: params[:id])
  end 
end 