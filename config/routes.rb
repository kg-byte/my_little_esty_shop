Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'merchants/:merchant_id/dashboard', to: 'merchants#show'
  get 'merchants/:merchant_id/items', to: 'items#index'
  get 'merchants/:merchant_id/items/new', to: 'items#new'
  post 'merchants/:merchant_id/items', to: 'items#create'
  get 'merchants/:merchant_id/items/:item_id', to: 'items#show'
  get 'merchants/:merchant_id/items/:item_id/edit', to: 'items#edit'
  patch 'merchants/:merchant_id/items/:item_id', to: 'items#update'
  get 'merchants/:merchant_id/invoices', to: 'invoices#index'

end
