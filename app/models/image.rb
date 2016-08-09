class Image < ApplicationRecord
    
	  mount_uploaders :avatars, AvatarUploader
end
