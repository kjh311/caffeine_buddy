class CreateDrinkPrices < ActiveRecord::Migration
  def change
    create_table :drink_prices do |t|
      t.decimal :price, precision: 8, scale: 2
      t.integer :drink_id
      t.integer :store_id

      t.timestamps null: false
    end
  end
end
