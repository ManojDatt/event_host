ActiveAdmin.register Event do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params   :ev_name, :image, :registration_opening_date, :registration_closing_date, :event_date, :status
#
# or
#Event id: nil, ev_name: nil, image: nil, created_at: nil, updated_at: nil, registration_opening_date: nil, registration_closing_date: nil, event_date: nil
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
config.batch_actions = true
  index do 
  	selectable_column
      column :id
      column :ev_name
      column :image do |img|
        image_tag img.image_url(:admin_index)
      end
      column :registration_opening_date
      column :registration_closing_date
      column :event_date
      column :status
      actions name: "Actions"
  end

  form do |f|
      div class:"col-md-5"do
        f.semantic_errors *f.object.errors.keys # shows errors on :base
        f.inputs   :ev_name 
        f.file_field :image 
        f.input :status, as: :select, collection: Event.statuses.keys
        panel "Event Date" do
          f.inputs do 
            f.input :registration_opening_date, as: :datepicker, datepicker_options: { min_date: "2013-10-8",        max_date: "+3D" } 
            f.input :registration_closing_date ,as: :datepicker, datepicker_options: { min_date: "2013-10-8",        max_date: "+3D" } 
            f.input :event_date, as: :datepicker, datepicker_options: { min_date: "2013-10-8",        max_date: "+3D" }
          end
        end 
      end
      div class:"col-md-4",id:"dvPreview"do
      end
   f.actions 
  end

end
