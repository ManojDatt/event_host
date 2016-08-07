Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

   root 'home#index'
   resources :home ,only:[:index] do
   end
   get 'home/about' ,:as =>"about"
   get 'home/blog', as: :blog
   get 'home/gallery', as: :gallery
   get 'home/contact_us', as: :contact_us
  
   resources :subscriptions do 
    
   end
end
