class AddAttachmentPhotoToUserItems < ActiveRecord::Migration
  def self.up
    change_table :user_items do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :user_items, :photo
  end
end
