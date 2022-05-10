Rails.application.routes.draw do
   resources :applications
   get 'applications/index'
   get 'users/index'
   get 'sessions/about'

   

   resources :users, only: [:new, :create,:update,:destroy]
   root "sessions#welcome"
    
   delete '/sessions', to: 'sessions#destroy'
   delete '/users', to: 'users#destroy'


   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   get 'welcome', to: 'sessions#welcome'
   get 'authorized', to: 'sessions#page_requires_login'


end