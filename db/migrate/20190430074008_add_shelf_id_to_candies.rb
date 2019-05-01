class AddShelfIdToCandies < ActiveRecord::Migration[5.2]
  def change
    add_reference :candies, :shelf, foreign_key: true
  end
end
