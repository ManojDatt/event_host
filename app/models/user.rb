class User < ApplicationRecord
    has_many :subscriptions
    #validates :name, :f_name, :phone, :address, :email ,presence: true                                 
	mount_uploader :image, AvatarUploader

  
	attr_accessor :no_of_subscription, :age, :subscribed_events


	def age
       @age = Time.now.year - (self.dob).year   if self.dob.present?
	end
   

   def no_of_subscription
    self.subscriptions.count
   end

   def subscribed_events
    subscriptions = self.subscriptions
    event_ids = self.subscriptions.pluck(:event_id) if subscriptions.present?
    @subscribed_events = Event.where(id: event_ids)
   end
   
    

end
