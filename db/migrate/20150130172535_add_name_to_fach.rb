class AddNameToFach < ActiveRecord::Migration
  def change
    add_column :faches, :name, :string
  end
end
