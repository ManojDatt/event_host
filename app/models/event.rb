class Event < ApplicationRecord

      has_many :subscriptions
      has_many :users ,through: :subscriptions , dependent: :destroy
      mount_uploader :image, AvatarUploader
      enum status: [:Active, :Deactive, :Upcomming]
      scope :active_events, ->{where(status: 0)}
      scope :deactive_events, ->{where(status: 1)}
      scope :upcomming_events, ->{where(status: 2)}
      # before_save :rules_create
       serialize       :rules, Array
       attr_accessor   :rules_raw

       def names_raw
       	self.rules.join("\n") unless self.rules.nil?
       end

       def names_raw=(values)
       	self.rules = []
       	p "kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk"
       	self.rules = values.split("\n")
       end
       # def rules_create
       # 	   self.rules = []
       # 	   p "jknvffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
       # 	   self.rules = rules_raw.split("\n")
       # 	   p "#{self.rules}=====================#{rules_raw}"
       # 	   self.rules
       # end

end
