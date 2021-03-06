Eventguide::Application.routes.draw do

  root 'events#index'

  resources :users, except: [:destroy]

  resource :sessions, only: [:create, :new, :destroy]

  # CRUD CATEGORY
# VERB "URL PATH" => "controller_name_plural#action", as: :folder_path_variable

# CRUD CATEGORY + PROCESS + HTML VERBS
 # CREATE  
 # ---  BLANK  
  get 'events/new' => 'events#new', as: :new_event

 # ---  SAVE  
  post 'events' => 'events#create', as: :create_event

 # READ  
 # ---  LIST  
  get 'events' => 'events#index', as: :events

 # ---  ONE   
  get 'events/:id' => 'events#show', as: :event

 # UPDATE    
 # ---  EDIT  
  get 'events/:id/edit' => 'events#edit', as: :edit_event
 # ---  SAVE 
  patch 'events/:id' => 'events#update', as: :update_event

 # DELETE   
 # ---  DELETE  
  delete 'events/:id' => 'events#destroy', as: :delete_event

 # ------




  get 'fevents/new' => 'fevents#new', as: :new_fevent

 # ---  SAVE  
  post 'fevents' => 'fevents#create', as: :create_fevent

 # READ  
 # ---  LIST  
  get 'fevents' => 'fevents#index', as: :fevents

 # ---  ONE   
  get 'fevents/:id' => 'fevents#show', as: :fevent

 # UPDATE    
 # ---  EDIT  
  get 'fevents/:id/edit' => 'fevents#edit', as: :edit_fevent
 # ---  SAVE 
  patch 'fevents/:id' => 'fevents#update', as: :update_fevent

 # DELETE   
 # ---  DELETE  
  delete 'fevents/:id' => 'fevents#destroy', as: :delete_fevent

  get '*path' => redirect('/')
 
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
