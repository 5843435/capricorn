class AddEmailSecondToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email_second, :string
  end
end
