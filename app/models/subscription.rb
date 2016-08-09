class Subscription < ApplicationRecord
   belongs_to :user
   belongs_to :event

   delegate :name , to: :user , prefix: true 
   delegate :ev_name, to: :event
   attr_internal_accessor :payment, "paid" 
   attr_accessor :name, :card_number, :card_expire, :card_cvv
   
   def payment
   	@payment = "paid"
   end
end
