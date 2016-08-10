ActiveAdmin.register Album do

 permit_params :title,single_images_attributes: [:id,:_destroy,:image]



form html: { multipart: true } do |f|
	  
	  f.inputs  do
	  	f.input :title
         f.has_many :single_images, allow_destroy: true do |a|
           a.input :image, :as => :file 
         end
      end
       f.actions
   end
end
