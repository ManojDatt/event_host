ActiveAdmin.register Album do

 permit_params :title,images_attributes:[:id,:_destroy,:avatar]



	  form do |f|
		  f.input :title
		  f.inputs  do
	         f.has_many :images, allow_destroy: true do |a|
	           a.input :avatar, :as => :file 
	         end
	      end
	
	       f.actions
	  end


index do
    column "Name" do |album|
       columns album.title

    end
    column "Name" do |album|
     columns "Images" do
   ul do
    album.images.each do |img|
      li do 
        image_tag(img.avatar.url)
      end
    end
   end
end
   
end


  end



end
