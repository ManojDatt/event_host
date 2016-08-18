class Image < ApplicationRecord
	  belongs_to :avatarable, polymorphic: true
	  mount_uploader :avatar, AvatarUploader
end
