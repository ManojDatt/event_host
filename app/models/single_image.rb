class SingleImage < ApplicationRecord


	  belongs_to :imagable, polymorphic: true
	  mount_uploader :image, AvatarUploader
end
