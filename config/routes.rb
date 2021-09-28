Rails.application.routes.draw do
  devise_for :customers
  get "homepage", to: "homepages#home"
  resources :booking_tickets, only: %i(create index)
  resources :films, only: %i(index show)
  resources :booking_seats, only: :index
  post "save_seat_to_store", to: "booking_seats#save_seat_to_store"
  post "remove_seat_to_store", to: "booking_seats#remove_seat_to_store"
  root "homepages#home"
end
