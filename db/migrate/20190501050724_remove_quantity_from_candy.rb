class RemoveQuantityFromCandy < ActiveRecord::Migration[5.2]
  def change
    remove_column :candies, :quantity, :integer
  end
end
