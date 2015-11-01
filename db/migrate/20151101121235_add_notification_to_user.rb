class AddNotificationToUser < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :notification, :integer
  end
end
