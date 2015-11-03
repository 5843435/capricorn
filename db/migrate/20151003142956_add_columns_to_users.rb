class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :family_men, :integer
    add_column :users, :family_women, :integer
    add_column :users, :zipcode, :integer, :limit => 7
    add_column :users, :address, :string
  end
end
