ActiveAdmin.register YouTubeVideo do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :uid,:link,:title
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
index do 
 column :id
 column :link
 # column :link do  |video|
 # 	video_tag link
 # end
 column :title
 column :created_at
 actions name: "Actions"
end

form do |f|
  f.inputs :link
  f.inputs :title
  actions
  end 

end
