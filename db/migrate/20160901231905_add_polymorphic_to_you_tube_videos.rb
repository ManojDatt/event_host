class AddPolymorphicToYouTubeVideos < ActiveRecord::Migration[5.0]
  def change
    add_reference :you_tube_videos, :adder, polymorphic: true
  end
end
