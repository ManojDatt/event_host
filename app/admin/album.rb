ActiveAdmin.register Album do

 permit_params :title,images_attributes:[:id,:_destroy,:image]



	  form html: { multipart: true } do |f|
		  f.inputs :title
		  f.inputs  do
	         f.has_many :images, allow_destroy: true do |a|
	           a.input :image, :as => :file 
	         end
	      end
	       f.actions
	  end





end
