class CreateShelves < ActiveRecord::Migration[5.2]
  def change
    create_table :shelves do |t|
      t.string :name
      t.integer :capacity
      t.integer :quantity
      t.references :candy_shop, foreign_key: true
      t.timestamps
    end
  end
end
