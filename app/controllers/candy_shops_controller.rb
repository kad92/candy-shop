class CandyShopsController < ApplicationController
    mattr_accessor :currentShop
    @@currentShop;
    def index
        @candyShops = CandyShop.all;
        count = @candyShops.length
        @status = true

        if(count > 0) 
            @status = false
        end

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
        @candyShop = CandyShop.find(params[:id]) 
        @candyShops = CandyShop.all
    end
    private
        def candyShop_params
            params.require(:candy_shop).permit(:name)
        end
end
