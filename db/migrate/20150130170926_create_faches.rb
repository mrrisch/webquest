class CreateFaches < ActiveRecord::Migration
  def change
    create_table :faches do |t|
      t.string :name
      t.timestamps
    end
  end
end
