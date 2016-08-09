class AddAvatarsToVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :avatars, :json
  end
end
