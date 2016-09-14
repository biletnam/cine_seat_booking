Rails.application.routes.draw do
  get 'booking/new'

  devise_for :users
  get 'reservations/index'

  get 'home/index'
  #root 'reservations#index'
  root to: 'booking#new'

  resources :bookings
end
