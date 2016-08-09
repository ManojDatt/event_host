class RemoveColumnFromVideos < ActiveRecord::Migration[5.0]
  def change
    remove_column :videos, :avatar, :string
  end
end
