class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :unit
      t.integer :num

      t.timestamps null: false
    end
  end
end
