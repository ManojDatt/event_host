class User < ApplicationRecord
    has_many :subscriptions
    validates :name, :f_name, :dob, :phone, :address, :email ,presence: true                                 
	mount_uploader :image, AvatarUploader
	

	def age
       age = Time.now.year - Time.at(self.dob.to_f).year
	end

end
