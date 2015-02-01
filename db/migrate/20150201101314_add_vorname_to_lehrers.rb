class AddVornameToLehrers < ActiveRecord::Migration
  def change
    add_column :lehrers, :vorname, :string
  end
end
