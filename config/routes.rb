Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :items
  resources :outfits
  resources :outfit_items
  resources :follows
end
