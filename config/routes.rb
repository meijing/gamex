Sex::Application.routes.draw do
  resources :toy_zones

  resources :accessory_acts

  resources :zone_acts

  resources :toy_acts

  resources :accessories

  resources :tips

  resources :toys

  resources :erogenous_zones

  resources :acts

  match 'management' => 'home#index', :as => :management
  match 'home' => 'home#index', :as => :home
  match 'relationships' => 'home#relationships', :as => :relationships
  
  #para o mantemento das relacions
  match 'create_toy_act' => 'toy_acts#create_toy_act', :as => :create_toy_act
  match 'create_zone_act' => 'zone_acts#create_zone_act', :as => :create_zone_act
  match 'create_accessory_act' => 'accessory_acts#create_accessory_act', :as => :create_accessory_act
  match 'create_zone_toy' => 'toy_zones#create_zone_toy', :as => :create_zone_toy
  
  #para o xogo
    #seleccion de sexo
    match 'game/select_player_1' => 'game#select_player_1', :as => :select_p1
    match 'game/select_player_2' => 'game#select_player_2', :as => :select_p2
  
    #xogo
    match 'game/play' => 'game#play', :as => :play
    match 'game/done' => 'game#done', :as => :done
    match 'game/pass' => 'game#pass_turn', :as => :pass
    
  #para seleccion de desexos
  match 'wishes' => 'wish#index', :as => :custom_wishes
  match '/wish/save_wishes'=> 'wish#save_wishes', :as => :save_wishes
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'game#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
