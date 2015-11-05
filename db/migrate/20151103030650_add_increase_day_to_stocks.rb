class AddIncreaseDayToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :increase_day, :integer, :default => 0
  end
end
