class Event < ApplicationRecord

      has_many :subscriptions, dependent: :destroy
      has_many :users ,through: :subscriptions , dependent: :destroy
      has_many :rules, dependent: :destroy
      accepts_nested_attributes_for :rules, :allow_destroy => true
      mount_uploader :image, AvatarUploader
      enum status: [:Active, :Deactive, :Upcomming]
      scope :active_events, ->{where(status: 0)}
      scope :deactive_events, ->{where(status: 1)}
      scope :upcomming_events, ->{where(status: 2)}
    
end
