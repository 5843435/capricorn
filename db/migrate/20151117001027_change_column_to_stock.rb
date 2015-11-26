class ChangeColumnToStock < ActiveRecord::Migration
  def change
    change_column :stocks, :user_id, :string
  end
end
