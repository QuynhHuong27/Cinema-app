Rails.application.routes.draw do
  devise_for :customers
  # devise_scope :customer do
  #   root "devise/sessions#new"
  # end

  get "homepage", to: "homepages#home"
  resources :films, only: %i(index show)
  root "homepages#home"
end
