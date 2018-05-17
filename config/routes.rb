Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'pages#home'
get 'about', to: 'pages#about'

#gives CRUD paths
resources :articles

get 'signup', to: 'users#new'
#post 'users', to: 'users#create'
#same as below
resources :users, except: [:new]
end
