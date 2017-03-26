Rails.application.routes.draw do
  resources :testts
  resources :tests
  resources :tests
  resources :ideas
  resources :ride_offer_comments
  resources :forum_comments
  resources :forums
  resources :ride_offers
  resources :recent_change_comments
  resources :recent_changes
  resources :profile_contents
  resources :profile_contents
  resources :profile_contents
  resources :about_us
  resources :information
  resources :information
  resources :sponsors
  resources :profiles
  resources :friends
  resources :comments
  resources :ideas
  root to: 'visitors#index'
  devise_for :users
  resources :users

end
