Rails.application.routes.draw do
  resources :bookmarks
  resources :categories
  resources :kinds

  get '/bookmarks/show_by_category/:category_id', to: 'bookmarks#show_by_category', as: 'endpoint'

  root 'bookmarks#index'
end
