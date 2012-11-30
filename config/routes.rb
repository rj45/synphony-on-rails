Synphony::Application.routes.draw do
  resources :api_keys


  namespace :api, defaults: { format: 'json' } do
    namespace :simplified do
      resource :login
      resources :projects
      resources :projects do
        resources :words
        # resources :known_spelling_patterns
      end
    end

    namespace :v1 do
      # resources :language_projects
      # resources :graphemes
      # resources :phonemes
      # resources :spelling_patterns
      # resources :words
      # resources :sentences
      # resources :sequences
    end
  end


  resources :user_language_projects


  resources :language_projects

  resources :language_projects do
    resources :user_spelling_patterns
    resources :sequence_spelling_patterns
    resources :sequences
    resources :sentence_spelling_patterns
    resources :sentence_words
    resources :sentences
    resources :word_spelling_patterns
    resources :words
    resources :spelling_patterns
    resources :phonemes
    resources :graphemes
  end


  devise_for :users

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
  root :to => 'landing_page#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
