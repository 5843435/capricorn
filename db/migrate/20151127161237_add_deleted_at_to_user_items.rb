class AddDeletedAtToUserItems < ActiveRecord::Migration
  def change
    add_column :user_items, :deleted_at, :datetime
  end
end
