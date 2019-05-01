class CreateCandies < ActiveRecord::Migration[5.2]
  def change
    create_table :candies do |t|
      t.string :name
      t.integer :shelf_id
      t.timestamps
    end
  end
end
