class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :photo_url
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
