class CandiesController < ApplicationController
  def new
  	@candyShop = CandyShop.find(params[:candy_shop_id])
  end
  def create
  	@candyShop = CandyShop.find(params[:candy_shop_id])
  	
    
	@qty = params[:quantity].to_i
	for i in 1..@qty	
	  @candyShop.candies.create(candy_params)	
	end
	redirect_to @candyShop   
  end
  private 
  	def candy_params
  		params.require(:candy).permit(:name)
  	end
end
