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
config.batch_actions = true
  index do 
    selectable_column
  column "Name" do |album|
    columns album.title
  end
  column "Images" do |album|
    columns "Images" do
      ul do
        album.images.each do |img|
          li do 
            image_tag(img.avatar.url(:admin_index))
          end
        end
      end
    end
  end
  actions
end

controller do 


def create
     @album = Album.create(find_params)
     redirect_to admin_albums_path
end
  private
  def find_params 
      params.require(:album).permit(:title,images_attributes:[:id,:_destroy,:avatar])
  end

end


end
