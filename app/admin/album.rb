ActiveAdmin.register Album do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :title,images_attributes: {},avatars:[]
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

form html: { multipart: true } do |f|
	  
	  f.inputs  do
	  	f.input :title
         f.has_many :images, allow_destroy: true do |a|
           a.input :avatars, :as => :file ,input_html: { multiple: true }
         end
      end
       f.actions
   end
end
 # f.has_many :projectimages do |j|
 #            j.input :project_image, :as => :file ,input_html: { data: {image_id: i}}, :hint => image_tag(j.object.project_image.url,:width => 50, :height => 50)
 #        i+=1

 # f.inputs do
 #      f.input :name

 #      f.has_many :images do |p|
 #        p.input :url
 #      end
 #    end

 #    f.actions
 #  end