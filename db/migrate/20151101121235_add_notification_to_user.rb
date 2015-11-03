class AddNotificationToUser < ActiveRecord::Migration
  def change
    add_column :users, :notification, :integer
  end
end
