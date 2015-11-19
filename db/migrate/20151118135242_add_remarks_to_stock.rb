class AddRemarksToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :remarks, :string
  end
end
