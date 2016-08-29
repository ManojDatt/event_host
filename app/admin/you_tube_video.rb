ActiveAdmin.register YouTubeVideo do

 permit_params :uid,:link,:title

index do 
 column :id
 column :link
 column :title
 column :created_at
 actions name: "Actions"
end


form do |f|
	 div class:"col-md-5"do
  f.inputs :link
  f.inputs :title
  f.inputs :desc
   div class:"col-md-2",id:"video_review"do
          br
          text_node %{<iframe id="ytv_frame" width="560" height="315"  frameborder="0" allowfullscreen></iframe> }.html_safe
      end
  actions
  end 

end

end
