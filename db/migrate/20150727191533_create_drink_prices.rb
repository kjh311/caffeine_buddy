class CreateDrinkPrices < ActiveRecord::Migration
  def change
    create_table :drink_prices do |t|
      t.integer :price
      t.integer :drink_id
      t.integer :store_id

      t.timestamps null: false
    end
  end
end
