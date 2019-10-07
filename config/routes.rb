Rails.application.routes.draw do
  get 'shippings/index'
  resources :products, defaults: { format: :json }
  resources :order_items, defaults: { format: :json }
  resources :orders, defaults: { format: :json }
  resources :users, defaults: { format: :json }
  resources :shippings, defaults: { format: :json }
end
