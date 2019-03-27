class CandyShopsController < ApplicationController
    def index
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
    end
    private
        def candyShop_params
            params.require(:candy_shop).permit(:name)
        end
end
