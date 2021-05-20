Rails.application.routes.draw do
  
  # deviseを使用する際にURLとしてusersを含むことを示しています
  devise_for :users
  # トップページをルートパスとする
  root to: 'homes#top'
  
  
end
