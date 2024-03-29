Polaris::Application.routes.draw do
  root :to => 'home#index'
  
  get "pesagens/pesagem_animal"
  
  devise_for :users
  
  match "/pesagens/pesagem_animal/:id", to: 'pesagens#pesagem_animal', via: [:get, :post]
  
  match "/vacinas/historico_vacinas/:id", to: 'vacinas#historico_vacinas', via: [:get, :post]
  
  match "/contact", to: 'pages#contact', via: [:get, :post]
  
  match '/about', to: 'pages#about', via: [:get, :post]
  
  
  resources :exames

  resources :tipo_exames

  resources :cios

  resources :coberturas

  resources :imagens

  resources :vacinas

  resources :pesagens

  resources :animais

  resources :nascimentos

  resources :usuarios

  resources :permissoes

  resources :propriedades

  resources :informacoes

  resources :classificacoes

  resources :medicamentos

  resources :tipo_medicamentos

  resources :tipo_vacinas

  resources :racas
  

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
