Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "home#index"

  get "/call-for-submissions" => "home#call_for_submissions", as: :call_for_submissions
  get "/plan-your-stay/live-like-a-local" => "home#live_like_a_local", as: :live_like_a_local
  get "/plan-your-stay/budgeting" => "home#budgeting", as: :budgeting
  get "/privacy" => "home#privacy", as: :privacy
  get "/terms" => "home#terms", as: :terms
  get "/venue" => "home#venue", as: :venue
  get "/volunteer" => "home#volunteer", as: :volunteer

  resource :contact, controller: :contact, only: [:show, :create]

  get "/plan-your-stay", to: redirect("/plan-your-stay/accommodations")
  scope "/plan-your-stay" do
    resources :accommodations, only: :index do
      collection do
        get :bugis
        get :lavender
      end
    end
  end

  get "/programme/:type/:id" => "programmes#show"
  resources :programme, only: [:index, :show], controller: :programmes

  resources :speakers, only: [:index, :show]
  resources :sponsors, only: [:index, :show]
  resources :updates, only: [:index, :show]

  get "/sign-in" => "sessions#new", as: :sign_in
  resource :sign_in, path: "sign-in", controller: :sessions, only: :create

  delete "/sign-out" => "sessions#destroy", as: :sign_out

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
