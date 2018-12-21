Rails.application.routes.draw do

  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
devise_for :users

#index, root or home
root 'home#index' #controlador home solo un root por proyecto

resources :posts do
  resources :comments
  member do 
    patch :publish
  end 
end

resources :subscriptors

#admin routes
get 'admin', to: 'admin#index'
get 'admin/products', to: 'admin#products'

resources :products, only: [:index, :new, :create, :show]
resource :cart, only: [:show]
resources :order_items, only: [:create, :update, :destroy]



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
