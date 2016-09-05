Rails.application.routes.draw do
  devise_for :users
  get 'reservations/index'

  get 'home/index'
  root 'reservations#index'
  
end
