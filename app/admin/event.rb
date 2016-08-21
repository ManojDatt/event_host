ActiveAdmin.register Event do

 permit_params   :ev_name, :image, :registration_opening_date,
                 :registration_closing_date, :event_date, 
                 :status,:description, rules_attributes:[:id,:_destroy,:content]

config.batch_actions = true
  index do 
  	selectable_column
      column :id
      column :ev_name
      column :image do |img|
        image_tag img.image_url(:admin_index)
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
        f.inputs :description
        f.inputs :status, as: :select, collection: Event.statuses.keys
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
end
