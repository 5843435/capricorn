class AddColumnToStock < ActiveRecord::Migration
  def change
    add_column :stocks, :project_id, :string
  end
end
