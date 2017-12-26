Rails.application.routes.draw do


  devise_for :users, :controllers => {:registrations => "registrations"}
  get 'contact/index'


  get 'about/index'
  get 'dev/fun'
  root 'welcome#index'

  get 'profile/:username', to: 'profiles#show', as: :profile
  get 'profile/:username/edit', to: 'profiles#edit', as: :edit_profile
  patch 'profile/:username/edit', to: 'profiles#update', as: :update_profile



  resources :styles do
    resources :pictures
    resources :comments
  end
  get 'about' => 'about#index'
  get 'contact' => 'contact#index'


end
