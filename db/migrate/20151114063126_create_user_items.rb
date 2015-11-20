class CreateUserItems < ActiveRecord::Migration
  def change
    create_table :user_items do |t|
      t.integer :user_id
      t.integer :unit
      t.integer :num
      t.string :name
      t.float :spent_men
      t.float :spent_women
      t.float :spent_child
      t.timestamps null: false
    end
  end
end
