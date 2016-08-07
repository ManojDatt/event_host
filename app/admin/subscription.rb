ActiveAdmin.register Subscription do

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

actions :all, :except => [:new]
config.batch_actions = true
index do 
  selectable_column
  column :id 
  column "Participant Name" ,:user_name
  column "Event" ,:ev_name
  column :created_at
  column "Payment" ,:payment
  actions
end
controller do
    def scoped_collection
      Subscription.includes(:user,:event)
    end
  end

end
