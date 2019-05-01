class CandyShop < ApplicationRecord
	has_many :shelves
	has_many :candies
    validates :name , presence:true, 
                    length:{minimum:2}
end
