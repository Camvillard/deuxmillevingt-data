Rails.application.routes.draw do
  resources :products, defaults: { format: :json }
  resources :order_items, defaults: { format: :json }
  resources :orders, defaults: { format: :json }
  resources :users, defaults: { format: :json }
  resources :pickups, defaults: { format: :json }
end
