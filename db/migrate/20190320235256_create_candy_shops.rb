class CreateCandyShops < ActiveRecord::Migration[5.2]
  def change
    create_table :candy_shops do |t|

      t.timestamps
    end
  end
end
