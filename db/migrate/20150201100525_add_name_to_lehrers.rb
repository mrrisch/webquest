class AddNameToLehrers < ActiveRecord::Migration
  def change
    add_column :lehrers, :name, :string
  end
end
