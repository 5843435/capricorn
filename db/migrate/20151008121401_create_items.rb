class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :spent_men
      t.float :spent_women
      t.float :spent_child

      t.timestamps null: false
    end
  end
end
