class CandyShopsController < ApplicationController
    def index
        @candyShops = CandyShop.all
        count = @candyShops.length
        @status = true
        
        if(count > 0) 
            @status = false
        end
        
        @currentShop = nil
        @currentShopId = nil

        if @candyShop != nil
            @currentShop = @candyShop
            @currentShopId = @candyShop.id    
        else
            @currentShop = @candyShops.first
            @currentShopId = @candyShops.first.id
        end 

        @unsCandies = Candy.joins(:candy_shop).where(shelf_id: nil).where(:candy_shops => {:id => @currentShopId}).all
    end
    def new 
        @candyShop = CandyShop.new
    end
    def create
        @candyShop = CandyShop.new(candyShop_params)   

        if @candyShop.save 
            redirect_to @candyShop
        else
            render 'new'
        end
    end

    def show
         
        @candyShops = CandyShop.all
        @currentShop =CandyShop.find(params[:id])
        @currentShopId = @currentShop.id
        @unsCandies = Candy.joins(:candy_shop).where(shelf_id: nil).where(:candy_shops => {:id => @currentShopId}).all
    end
    
    private
        def candyShop_params
            params.require(:candy_shop).permit(:name)
        end
end
