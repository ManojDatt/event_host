class Subscription < ApplicationRecord
   belongs_to :user
   belongs_to :event

   delegate :name , to: :user , prefix: true 
   delegate :ev_name, to: :event
   attr_internal_accessor :payment, "paid" 

   def payment
   	@payment = "paid"
   end
end
