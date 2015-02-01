class AddFachIdToWebquests < ActiveRecord::Migration
  def change
  	add_column :webquests, :fach_id, :integer
  end
end
