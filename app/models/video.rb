class Video < ApplicationRecord
	belongs_to :avatarable, polymorphic: true
	mount_uploader :avatars, AvatarUploader
end
