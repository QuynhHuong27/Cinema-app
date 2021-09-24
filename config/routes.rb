Rails.application.routes.draw do
  get 'homes/show'
  devise_for :customers
  # devise_scope :customer do
  #   root "devise/sessions#new"
  # end

  get "homepage", to: "homepages#home"
  resources :films, only: %i(index show)
  root "homepages#home"

  # resource :homes, only: [:show]
  # root to: "homes#show"
end
