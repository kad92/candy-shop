class RemoveQantityFromCandy < ActiveRecord::Migration[5.2]
  def change
    remove_column :candies, :qantity, :integer
  end
end
