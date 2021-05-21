Rails.application.routes.draw do
  
  # トップページをルートパスとする
  root  'homes#top'
  
  # deviseを使用する際にURLとしてusersを含むことを示しています
  devise_for :users
  
  
  resources :post_images
  
  
end
