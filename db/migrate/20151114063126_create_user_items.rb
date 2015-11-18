class CreateUserItems < ActiveRecord::Migration
  def change
    create_table :user_items do |t|

      t.timestamps null: false
    end
  end
end
