class AddAttachmentAnhangToWebquests < ActiveRecord::Migration
  def self.up
    change_table :webquests do |t|
      t.attachment :anhang
    end
  end

  def self.down
    remove_attachment :webquests, :anhang
  end
end
