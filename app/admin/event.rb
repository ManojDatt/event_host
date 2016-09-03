ActiveAdmin.register Event do

 permit_params   :ev_name, :image, :registration_opening_date,
                 :registration_closing_date, :event_date, 
                 :status,:description, rules_attributes:[:id,:_destroy,:content],
                 videos_attributes:[:id,:_destroy,:avatars],
                 you_tube_videos_attributes:[:id,:_destroy,:link]

config.batch_actions = true
  index do 
  	selectable_column
      column :id
      column :ev_name
      column :image do |img|
        image_tag img.image_url(:admin_index)
      end
       column "Youtube Videos" do |event|
    columns  do
      ul do
        event.you_tube_videos.each do |ytd|
          li do 
            br
          text_node %{<iframe id="ytv_frame" width="200" height="100" src="//www.youtube.com/embed/#{ytd.uid}" frameborder="0" allowfullscreen></iframe> }.html_safe
           end
        end
      end
    end
  end
       column "Videos" do |event|
    columns  do
      ul do
        event.videos.each do |vdo|
          li do 
             video_tag(vdo.video_url, size: "150x100",controls: true)
           end
        end
      end
    end
  end
      column "Reg Op Date", :registration_opening_date 
      column "Reg Cl Date", :registration_closing_date
      column "Ev Date", :event_date
      column :status 
      actions name: "Actions"
  end

  form do |f|
      div class:"col-md-5"do
        f.semantic_errors *f.object.errors.keys # shows errors on :base
        f.inputs   :ev_name 
        f.inputs :image  , as: :file 
        f.inputs  do
        f.has_many :videos, allow_destroy: true do |a|
           a.input :avatars, :as => :file
           end
        end
        f.inputs do
        f.has_many :you_tube_videos, allow_destroy: true do |a|
           a.input :link
           end
        end

        f.inputs :description
        f.inputs :status
        f.inputs "Rules" do
          f.has_many :rules, allow_destroy: true do |a|
             a.input :content
          end
        end
        panel "Event Date" do
          f.inputs do 
            f.input :registration_opening_date, as: :datepicker, datepicker_options: { min_date: "2013-10-8",        max_date: "+3D" } 
            f.input :registration_closing_date ,as: :datepicker, datepicker_options: { min_date: "2013-10-8",        max_date: "+3D" } 
            f.input :event_date, as: :datepicker, datepicker_options: { min_date: "2013-10-8",        max_date: "+3D" }
          end
        end 
      end
      div class:"col-md-2",id:"dvPreview"do
      end
   f.actions 
 end

 controller do 


def create
     @event = Event.create(find_params)
     redirect_to admin_events_path
end
  private
  def find_params 
      params.require(:event).permit(:ev_name, :image, :registration_opening_date,
                 :registration_closing_date, :event_date, 
                 :status,:description, rules_attributes:[:id,:_destroy,:content],
                 videos_attributes:[:id,:_destroy,:avatars],
                 you_tube_videos_attributes:[:id,:_destroy,:link])
  end

end
end
