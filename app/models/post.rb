class Post < ApplicationRecord
	validates :title, :content, presence: true
	mount_uploader :image, AvatarUploader
#		mount_uploader :video, AvatarUploader
end
