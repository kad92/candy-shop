class AddQuantityToCandy < ActiveRecord::Migration[5.2]
  def change
    add_column :candies, :quantity, :integer
  end
end
