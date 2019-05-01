class AddQuantityToShelves < ActiveRecord::Migration[5.2]
  def change
    add_column :shelves, :quantity, :integer
  end
end
