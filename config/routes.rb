Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  apipie
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get 'products' => 'products#index'
      put 'products/:id/update' => 'products#update'
      post 'products/create' => 'products#create'
      delete 'products/:id/destroy' => 'products#destroy'
	end
  end
end
