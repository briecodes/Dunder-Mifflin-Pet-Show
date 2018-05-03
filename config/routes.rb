Rails.application.routes.draw do
  resources :dogs
  resources :employees
  # get '/dogs/sorted', to: 'dogs#index_sorted', as: '/sorted/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
