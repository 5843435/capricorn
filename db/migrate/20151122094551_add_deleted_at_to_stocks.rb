class AddDeletedAtToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :deleted_at, :datetime
  end
end
