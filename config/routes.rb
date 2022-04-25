Rails.application.routes.draw do
  # root to: "users#home"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "users#home"
  get  "flats",     to: "flats#index"
  get  "flats/new", to: "flats#new"
  post "flats",     to: "flats#create"
end
