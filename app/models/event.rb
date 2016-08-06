class Event < ApplicationRecord

      has_many :subscriptions
      mount_uploader :image, AvatarUploader

end
