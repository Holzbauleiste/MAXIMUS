Rails.application.routes.draw do

  devise_for :users
  #get 'devise/ohja'
  get 'contact/index'


  get 'about/index'
  get 'dev/fun'
  root 'welcome#index'

  resources :styles
  get 'about' => 'about#index'
  get 'contact' => 'contact#index'


end
