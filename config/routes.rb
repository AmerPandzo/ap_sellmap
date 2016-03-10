Rails.application.routes.draw do
  get "locations/index"
  get "locations/export"
  get "locations/lokacije"
  devise_for :users
  devise_scope :user do
  authenticated :user do
    root 'locations#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end
  resources :assets

  resources :technical_goods_assortments

  resources :ap_brands

  resources :ap_products

  resources :primary_assortments

  resources :locations_assortments

  resources :sales_specialists

  resources :places

  resources :regions

  resources :locations
   resources :locations do 
    collection do 
      get 'locations/export', :to => 'locations#export'
    end
  end
  get "companies/index"
  get "companies/show"
  get "companies/new"
  get "companies/edit"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
   root 'locations#index'
    authenticate :user do
    resources :locations, only: [:new, :create, :edit, :update, :destroy]
    resources :regions, only: [:new, :create, :edit, :update, :destroy]
  end
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
