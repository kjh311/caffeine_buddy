class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :type
      t.boolean :two_for_deal
      t.boolean :diet

      t.timestamps null: false
    end
  end
end
