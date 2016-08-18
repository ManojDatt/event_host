ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

actions :all, :except => [:new,:destroy]

config.batch_actions = true
index do 
  selectable_column
	  column :name
    column "Father Name", :f_name  
    column :age
    column :dob
    column "Subscribed Events", :no_of_subscription
    column :created_at
    actions
end



show do

    attributes_table do
      row :id
      row :name
      row :f_name
      row :phone
      row :email
      row :address
      row :age
      row :dob
      row :no_of_subscription 
      row 'Subscribed Events ' do |n|
        user.subscribed_events.map(&:ev_name).join("<br />").html_safe
      end
      row :created_at
    end
end
controller do
    def scoped_collection
      User.includes(:subscriptions)
    end
  end






end
