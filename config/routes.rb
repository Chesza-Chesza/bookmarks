Rails.application.routes.draw do
  resources :bookmarks
  resources :categories
  resources :kinds

  root 'bookmarks#index'
end
