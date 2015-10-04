class AddAddressToUsers < ActiveRecord::Migration
  def change
    add_column :users, :zipcode, :integer, :limit => 7
    add_column :users, :prefecture, :string
    add_column :users, :city, :string
    add_column :users, :street, :string
  end
end
