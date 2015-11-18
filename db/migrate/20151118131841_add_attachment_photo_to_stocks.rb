class AddAttachmentPhotoToStocks < ActiveRecord::Migration
  def self.up
    change_table :stocks do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :stocks, :photo
  end
end
