ActiveAdmin.register Post do


permit_params  :title, :content, :image, :video

form do |f|
 f.inputs :title 
 f.inputs :content
 f.inputs :image  , as: :file 
 f.inputs :video  , as: :file 
 f.actions
end
config.batch_actions = true
  index do 
  	selectable_column
      column :id
      column :title
      column :image do |img|
        image_tag img.image_url(:admin_index)
      end
      column :video do |vdo|
      	video_tag(vdo.video_url, size: "150x100",controls: true)
      end
      column :content
      column :created_at
      column :updated_at
      actions
  end
end
