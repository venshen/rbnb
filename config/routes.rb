Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "users#home"oooh
  resources :items do
    resources :bookings, :only => [:new, :create]

  end
  resources :bookings, :only => :index
  # get  "items",     to: "items#index"
  # get  "items/new", to: "items#new"
  # post "items",     to: "items#create"
  # get "items/:id/edit",     to: "items#edit"
  # post "items/:id/bookings", to:"bookings#create"
  # get  "bookings",  to: "bookings#index"
end
