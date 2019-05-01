class Candy < ApplicationRecord
	belongs_to :candy_shop
	belongs_to :shelves, optional: true	
end
