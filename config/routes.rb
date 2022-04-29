Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "users#home"oooh
  resources :items do
    resources :bookings, :only => [:new, :create]
  end

  resources :bookings do
    resources :reviews, only: [ :new, :create ]
  end
  
  resources :bookings, :only => :index
  resources :users, :only => [:index, :show]

end
