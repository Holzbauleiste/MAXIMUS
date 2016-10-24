Rails.application.routes.draw do
  get 'dev/fun'

  root 'welcome#index'
  resources :styles
end
