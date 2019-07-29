class CreateTunes < ActiveRecord::Migration[5.2]
  def change
    create_table :tunes do |t|
      t.string :name
      t.string :artist
      t.string :album
      t.string :genre

      t.timestamps
    end
  end
end
