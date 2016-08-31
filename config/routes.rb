Rails.application.routes.draw do
  get 'reservations/index'

  get 'home/index'
  root 'reservations#index'
  
end
