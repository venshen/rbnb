Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "users#home"
  get  "items",     to: "items#index"
  get  "items/new", to: "items#new"
  post "items",     to: "items#create"
end
