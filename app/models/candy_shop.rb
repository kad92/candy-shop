class CandyShop < ApplicationRecord
	has_many :shelves
    validates :name , presence:true, 
                    length:{minimum:2}
end
