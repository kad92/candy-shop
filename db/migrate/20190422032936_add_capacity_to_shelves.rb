class AddCapacityToShelves < ActiveRecord::Migration[5.2]
  def change
    add_column :shelves, :capacity, :integer
  end
end
