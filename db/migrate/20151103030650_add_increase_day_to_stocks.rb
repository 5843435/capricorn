class AddIncreaseDayToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :increase_day, :integer
  end
end
