class ChangeBirthdayToUser < ActiveRecord::Migration
  def change
    change_column :users, :birthday, :date
  end
end
