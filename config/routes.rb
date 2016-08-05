Rails.application.routes.draw do
  root 'home#index'

  get 'home/about'

  get 'home/blog'

  get 'home/gallery'

  get 'home/contact_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
