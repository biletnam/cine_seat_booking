Rails.application.routes.draw do

  resources :bookings
  devise_for :users
  get 'reservations/index'
  root to: 'bookings#new'
end
