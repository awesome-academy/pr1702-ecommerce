Rails.application.routes.draw do
  get "cart/show"

  root "static_pages#home"

  get "/news" , to: "static_pages#news"
  get "/contact" , to: "static_pages#contact"
  get "/signin" , to: "users#new"
  get "/clothing" , to: "products#index"

  scope "(:locale)" do
    resources :products
    resources :categories
    resources :users
    resources :account_activations, only: :edit
  end

  get 'signin'  => 'users#new'

  post 'signin'  => 'users#create'

  get 'login' => 'session#new'

  post 'login' => 'session#create'

  delete 'logout' => 'session#destroy'
end
