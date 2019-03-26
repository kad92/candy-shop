class CandyShopsController < ApplicationController
    def index
    end
    def new
        @candyshop = CandyShop.new
    end
end
