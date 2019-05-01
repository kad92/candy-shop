class AddNameToShelves < ActiveRecord::Migration[5.2]
  def change
    add_column :shelves, :name, :string
  end
end
