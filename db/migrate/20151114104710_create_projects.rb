class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :key

      t.timestamps null: false
    end
    add_index :projects, :key, unique: true
  end
end
