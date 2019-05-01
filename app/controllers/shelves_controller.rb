class ShelvesController < ApplicationController
  def new
  	@candyShop = CandyShop.find(params[:candy_shop_id])
  end
  def create
  	@candyShop = CandyShop.find(params[:candy_shop_id])
  	@shelfHash = shelf_params
  	@shelfObj = Shelf.find_by(name:@shelfHash[:name], candy_shop_id: params[:candy_shop_id])
  	
    if @shelfObj == nil
      @candyShop.shelves.create(shelf_params)
      redirect_to @candyShop  
    else
      render "new"
    end
  	
  end
  private
  	def shelf_params
  		params.require(:shelf).permit(:name,:capacity,:quantity)
  	end 
end
