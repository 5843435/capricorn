class AddRemarksToUserItem < ActiveRecord::Migration
  def change
    add_column :user_items, :remarks, :string
  end
end
