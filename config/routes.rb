Rails.application.routes.draw do
  resources :dogs
  resources :employees
  
  
  # get '/dogs', to: 'dogs#index'
  # get '/dogs/new', to: 'dogs#new'
  # get '/dogs/:id', to: 'dogs#show'
  # get '/dogs/:id/edit', to: 'dogs#edit'
  # put '/dogs/:id', to: 'dogs#update'


  # get '/dogs/sorted', to: 'dogs#index_sorted', as: '/sorted/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
