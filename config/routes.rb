Rails.application.routes.draw do




  get 'categories' => 'categories#index', as: :main
  get '/categories/new' => 'categories#new'
  post '/categories' => 'categories#create'
  get '/categories/:id' => 'categories#show', as: :category

  get '/subcategories/new/:id' => 'subcategories#new', as: :newsubcategory
  post '/subcategories/create/:id' => 'subcategories#create', as: :subcategories
  get '/subcategories/:id' => 'subcategories#show', as: :subcategory

  get '/subsubcategories/new/:id' => 'subsubcategories#new', as: :newsubsubcategory
  post '/subsubcategories/create/:id' => 'subsubcategories#create', as: :subsubcategories
  get '/subsubcategories/:id' => 'subsubcategories#show', as: :subsubcategory


  get '/procedures/new/:id' => 'procedures#new', as: :newprocedure
  post '/procedures/' => 'procedures#create'
  get '/procedures/:id' => 'procedures#show', as: :procedure

  #Editing

  get '/categories/:id/edit' => 'categories#edit', as: :edit_category
  patch '/categories/:id' => 'categories#update'

  get '/subcategories/:id/edit' => 'subcategories#edit', as: :edit_subcategory 
  patch '/subcategories/:id' => 'subcategories#update'

  get '/subsubcategories/:id/edit' => 'subsubcategories#edit', as: :edit_subsubcategory 
  patch '/subsubcategories/:id' => 'subsubcategories#update'

  get '/procedures/:id/edit' => 'procedures#edit', as: :edit_procedure
  patch '/procedures/:id' => 'procedures#update'

  #Login Functionality
  get 'signup'  => 'users#new' 
  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy', as: :logout

  #Deleting
  delete 'categories/:id' => 'categories#destroy', as: :delete_category

  delete 'subcategories/:id' => 'subcategories#destroy', as: :delete_subcategory

  delete 'subsubcategories/:id' => 'subsubcategories#destroy', as: :delete_subsubcategory

  delete 'procedures/:id' => 'procedures#destroy', as: :delete_procedure



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
