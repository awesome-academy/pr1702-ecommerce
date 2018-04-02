Rails.application.routes.draw do
  root "static_pages#home"

  get "/news" , to: "static_pages#news"
  get "/contact" , to: "static_pages#contact"
  get "/signin" , to: "users#create"
  get "/clothing" , to: "products#index"

  scope "(:locale)" do
    resources :products
    resources :category
  end

end
