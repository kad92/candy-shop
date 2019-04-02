class WelcomeController < ApplicationController
    def index
        @candyShops = CandyShop.all
    end
end
