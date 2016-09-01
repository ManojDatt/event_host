ActiveAdmin.register YouTubeVideo do

 permit_params :uid,:link,:title

index do 
 column :id
 column :link
 column :title
 column :created_at
 column :uid
 column do |ytd|
   br
  text_node %{<iframe id="ytv_frame" width="200" height="100" src="//www.youtube.com/embed/#{ytd.uid}" frameborder="0" allowfullscreen></iframe> }.html_safe
 end
 actions name: "Actions"
end


  form do |f|
    	 div class:"col-md-5"do
              f.inputs :link
              f.inputs :title
              f.inputs :desc
       end
       div class:"col-md-2",id:"video_review"do
              br
              text_node %{<iframe id="ytv_frame" width="300" height="175"  frameborder="0" allowfullscreen></iframe> }.html_safe
       end
      f.actions
  end 
end
