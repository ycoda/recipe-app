Recipe::Application.routes.draw do

  root to: 'top#index'
  #root to: 'user_panels#index'

  resources :top, only: [:index, :show]
  resources :users, only: [:show, :new, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  match 'signup', to: 'users#new', via: 'get'
  match 'signin', to: 'sessions#new', via:'get'
  match 'signout', to: 'sessions#destroy', via: 'delete'
  resources :user_panels #, expect: [:index]
  resources :recipe_pictures


=begin
  match 'user_panel/new', to: 'user_panel#new',    via: 'get'
  match 'user_panel',     to: 'user_panel#create', via: 'post'
  match 'user_panel/:id', to: 'user_panel#show',   via: 'get'
=end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
