Rails.application.routes.draw do
  
  resources :vegetable_records
  # トップページをルートパスとする
  root  'homes#top'

  # deviseを使用する際にURLとしてusersを含むことを示しています
  devise_for :users
  
  resources :post_images
  
  resources :users
  
  
end
