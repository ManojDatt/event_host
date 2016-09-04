class ChangeVideoColumnFormatInVideos < ActiveRecord::Migration[5.0]
  def change
  	remove_column :videos, :avatars, default: [],              array: true
  	add_column :videos, :avatars, :string
  end
end
