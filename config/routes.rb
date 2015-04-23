

Rails.application.routes.draw do

  get "users/" => "users#index"
  get "signup" => "users#new", as: :new_user
  post "users/" => "users#create"
  get "users/:id" => "users#show", as: :user

  get "users/:id/edit" => "users#edit", as: :edit_user
  # post "users/:id/questions" => "questions#create", as: :user_questions
  patch "users/:id" => "users#update"
  delete "users/:id" => "users#destroy"
  get "users/:id/questions" => "questions#index", as: :users_questions
  # Routes dedictaed to encription
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  # Routes dedicated to questions
  get "questions/" => "questions#index"
  get "questions/new" => "questions#new", as: :new_question
  get "questions/:id" => "questions#show", as: :question
  post "questions/" => "questions#create"
 # post "users/:id/questions" => "questions#create", as: :_questions

  
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
