class CreateWebquests < ActiveRecord::Migration
  def change
    create_table :webquests do |t|
      t.string :name
      t.text :beschreibung
      t.string :fach

      t.timestamps
    end
  end
end
