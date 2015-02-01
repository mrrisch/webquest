class AddAttachmentImageToWebquests < ActiveRecord::Migration
  def self.up
    change_table :webquests do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :webquests, :image
  end
end
