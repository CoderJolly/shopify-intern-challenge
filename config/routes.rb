Rails.application.routes.draw do
  if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
    end
  post "/graphql", to: "graphql#execute"
  mount_devise_token_auth_for 'User', at: 'auth'
  apipie
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get 'products' => 'products#index'
      get 'products/:id' => 'products#individual'
      post 'products/:id/purchase' => 'products#purchase'
      put 'products/:id/update' => 'products#update'
      post 'products/create' => 'products#create'
      delete 'products/:id/destroy' => 'products#destroy'
	end
  end
end
