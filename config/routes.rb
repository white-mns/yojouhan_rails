Loe::Application.routes.draw do
  resources :buy_type_lists
  resources :multiple_buyings
  resources :acc_meganes
  resources :total_meganes
  resources :meganes
  resources :megane_type_lists
  resources :megane_type_lists
  resources :megane_type_lists
  resources :add_effect_lists
  resources :markets
  resources :payoffs
  resources :castle_structure_major_type_nums
  resources :frame_type_lists
  resources :castle_structures
  resources :next_battles
  resources :castle_condition_texts
  resources :castle_condition_lists
  resources :fortress_guards
  resources :regalia_lists
  
  get "fortress_data/all_data",    :to => "fortress_data#all_data",     :as => 'fortress_all_data' 
  get "fortress_data/and_payoffs",    :to => "fortress_data#and_payoffs",     :as => 'fortress_data_and_payoffs' 
  resources :fortress_data

  resources :statuses
  resources :items
  resources :names
  resources :elemental_lists
  resources :fuka_lists
  resources :unit_orig_name_lists
  resources :unit_type_lists

  get "top_page/privacy" 
  get "top_page/index" 
  root 'top_page#index'

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
