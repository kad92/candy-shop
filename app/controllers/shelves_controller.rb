class ShelvesController < ApplicationController
  def new
  	@candyShop = CandyShop.find(params[:candy_shop_id])
  end
  def create
  	@candyShop = CandyShop.find(params[:candy_shop_id])
  	@shelf = @candyShop.shelves.create(shelf_params)
  	redirect_to candy_shop_path(@candyShop)
  end
  private
  	def shelf_params
  		params.require(:shelf).permit(:name,:capacity,:quantity)
  	end 
end
