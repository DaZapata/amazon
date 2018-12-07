Rails.application.routes.draw do

devise_for :users

#index, root or home
root 'home#index' #controlador home solo un root por proyecto

resources :posts do
  resources :comments
end

resources :subscriptors, only: [:new, :create]

#admin routes
get 'admin', to: 'admin#index'


#home routes
# get '/home/index', to: 'home#index', as: 'jeronimo' # as: alias
# get 'home/about', to: 'home#about'
# get 'home/contact_us', to: 'home#contact_us'
# get 'home/prices', to: 'home#prices'

# blog routes
# get 'blog/index'
# get 'blog/new'
# get 'blog/show'
# get 'blog/edit'

# # devise
# devise_for :users

end
