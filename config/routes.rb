Rails.application.routes.draw do
  devise_for :users
  get 'dev/fun'

  root 'welcome#index'
  resources :styles
end
