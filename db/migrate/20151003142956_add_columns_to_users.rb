class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :birthday, :string
    add_column :users, :sex, :integer
    add_column :users, :family_men, :integer
    add_column :users, :family_women, :integer
  end
end
