Rails.application.routes.draw do
  devise_for :customers
  get "homepage", to: "homepages#home"
  post "save_data_store", to: "booking_tickets#save_data_store"
  resources :booking_tickets, only: %i(new create index)
  resources :films, only: %i(index show)
  root "homepages#home"
end
