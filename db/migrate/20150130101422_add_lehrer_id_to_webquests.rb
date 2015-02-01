class AddLehrerIdToWebquests < ActiveRecord::Migration
  def change
    add_column :webquests, :lehrer_id, :integer
    add_index :webquests, :lehrer_id
  end
end
