class Post < ApplicationRecord
	validates :title, :content, presence: true
	mount_uploader :image, AvatarUploader
	mount_uploader :videos, VideoUploader
#		mount_uploader :video, AvatarUploader

   scope :recent_posts , ->{Post.where(created_at: 7.days.ago..Time.now)}

end
