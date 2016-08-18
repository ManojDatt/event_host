class Event < ApplicationRecord

      has_many :subscriptions
      has_many :users ,through: :subscriptions , dependent: :destroy
      mount_uploader :image, AvatarUploader
      enum status: [:Active, :Deactive, :Upcomming]
      scope :active_events, ->{where(status: 0)}
      scope :deactive_events, ->{where(status: 1)}
      scope :upcomming_events, ->{where(status: 2)}
      
end
