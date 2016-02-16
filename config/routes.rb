Rails.application.routes.draw do
   
  get 'users/login'
  put 'users/validate_login'
  get 'users/logout'
  get 'users/dashboard'
  get 'users/index_purchase'
  get 'users/add_purchase'
  post 'users/get_purchase'
  get 'users/show_purchase'
  patch 'users/update_purchase'
  get 'users/edit_purchase'
  get 'users/delete_purchase'
  get 'users/index_issues'
  get 'users/add_issues'
  post 'users/get_issues'
  get 'users/show_issues'
  patch 'users/update_issues'
  get 'users/edit_issues'
  get 'users/delete_issues'
  get 'users/index_labour'
  get 'users/add_labour'
  post 'users/get_labour'
  get 'users/show_labour'
  patch 'users/update_labour'
  get 'users/edit_labour'
  get 'users/delete_labour'
  get 'users/add_orderSummary'
  post 'users/get_order'
  get 'users/show_orderSummary'
  patch 'users/update_orderSummary'
  get 'users/edit_orderSummary'
  get 'users/index_orderSummary'
  get 'users/delete_orderSummary'

  get 'users/index_admin'
  post 'users/index_admin'

  patch 'users/index_admin'
  get 'users/admin_create'
  post 'users/admin_create'

  get 'users/chemical_new'
  post 'users/chemical_new'
  get 'users/chemical_index'
  post 'users/chemical_index' 
  get 'users/chemical_create'
  post 'users/chemical_create'
  get 'users/chemical_delete'
  post 'users/chemical_delete'

  get 'users/chemical_type_new'
  post 'users/chemical_type_new'
  get 'users/chemical_type_index'
  post 'users/chemical_type_index'
  get 'users/chemical_type_delete'
  post 'users/chemical_type_delete'
  get 'users/chemical_type_create'
  post 'users/chemical_type_create'

  get 'users/raw_material_index'
  post 'users/raw_material_index'
  get 'users/raw_material_new'
  post 'users/raw_material_new'
  get 'users/raw_create'
  post 'users/raw_create'
  get 'users/raw_delete'
  post 'users/raw_delete'

  get 'users/party_order_index'
  post 'users/party_order_index'
  get 'users/party_order_new'
  post 'users/party_order_new'
  get 'users/party_order_create'
  post 'users/party_order_create'
  get "users/party_order_delete"
  post "users/party_order_delete"

   get 'users/party_purchase_index'
  post 'users/party_purchase_index'
  get 'users/party_purchase_new'
  post 'users/party_purchase_new'
  get 'users/party_purchse_create'
  post 'users/party_purchse_create'
  get 'users/party_purchse_delete'
  post 'users/party_purchse_delete'
 
  get 'users/mach_use_index'
  post 'users/mach_use_index'
  get 'users/mach_use_new'
  post 'users/mach_use_new'
  get 'users/machine_use_create'
  post 'users/machine_use_create'
  get 'users/machine_use_delete'
  post 'users/machine_use_delete'


  get 'users/mould_index'
  post 'users/mould_index'
  get 'users/mould_new'
  post 'users/mould_new'
  get 'users/mould_create'
  post 'users/mould_create'
  get 'users/mould_delete'
  post 'users/mould_delete'

  get 'users/goods_index'
  post 'users/goods_index'
  get 'users/goods_new'
  post 'users/goods_new'
  get 'users/goods_create'
  post 'users/goods_create'
   get 'users/goods_delete'
  post 'users/goods_delete'

  get 'users/nature_index'
  post 'users/nature_index'
  get 'users/nature_new'
  post 'users/nature_new'
  get 'users/nature_create'
  post 'users/nature_create'
  get 'users/nature_delete'
  post 'users/nature_delete'

  get 'users/reason_for_idle_index'
  post 'users/reason_for_idle_index'
  get 'users/reason_for_idle_new'
  post 'users/reason_for_idle_new'
  get 'users/reasonforidle_create'
  post 'users/reasonforidle_create'
  get 'users/reasonforidle_delete'
  post 'users/reasonforidle_delete'

  get 'users/new'
  post 'users/create'
  post 'users/new'
  get 'users/user_index'
  post 'users/user_index'
  get 'users/user_destroy'
  post 'users/user_destroy' 

  get 'users/trash_admin'
  get 'users/delete_trashOrderSummary'
  get 'users/restore_trashOrderSummary'
  get 'users/delete_trashIssue'
  get 'users/restore_trashIssue'
  get 'users/delete_trashLabour'
  get 'users/restore_trashLabour'
  get 'users/delete_trashPurchase'
  get 'users/restore_trashPurchase'

 
  resources :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#login'

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
