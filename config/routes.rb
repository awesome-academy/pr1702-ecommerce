Rails.application.routes.draw do
  root 'static_pages#home'

  get 'clothing' => 'static_pages#clothing'

  get 'news'    => 'static_pages#news'

  get 'accessories'    => 'static_pages#accessories'

  get 'contact'    => 'static_pages#contact'

  get  'signin'  => 'users#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
