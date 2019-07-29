class AddPhotoToTunes < ActiveRecord::Migration[5.2]
  def change
    add_column :tunes, :photo, :string
  end
end
