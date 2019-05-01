class Shelf < ApplicationRecord
	belongs_to :candy_shop
	has_many :candies
	validates :name , presence:true, 
                    length:{minimum:5}
    validates :capacity, presence:true, length:{minimum:1}
end
