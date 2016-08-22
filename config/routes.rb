Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

   root 'home#index'
   resources :home , only:[:index]
   get '/about'=>'home#about' , as:'about'
   get '/blog'=>'home#blog', as: 'blog'
   get '/gallery'=>'home#gallery', as: 'gallery'
   get '/contact_us'=>'home#contact_us', as: 'contact_us'
   get '/event/:id' =>'home#show_event', as: :event
   get '/youtubevideos' =>'home#youtube_videos', as: :youtube_videos
   resources :posts
   resources :subscription 
end
