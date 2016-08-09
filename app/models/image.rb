class Image < ApplicationRecord
	  belongs_to :avatarable, polymorphic: true
	  mount_uploaders :avatars, AvatarUploader
end
