class AddVideoLinkToTunes < ActiveRecord::Migration[5.2]
  def change
    add_column :tunes, :link, :string
  end
end
