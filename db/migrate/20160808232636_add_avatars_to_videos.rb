class AddAvatarsToVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :avatars,:string, array: true, default: []
  end
end
