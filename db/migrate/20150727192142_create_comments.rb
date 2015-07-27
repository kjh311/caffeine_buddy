class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :review, limit: 300
      t.integer :store_id

      t.timestamps null: false
    end
  end
end
