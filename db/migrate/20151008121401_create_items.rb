class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :spent_men
      t.integer :spent_women
      t.integer :spent_child

      t.timestamps null: false
    end
  end
end
