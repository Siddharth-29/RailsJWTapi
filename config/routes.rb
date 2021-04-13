Rails.application.routes.draw do
  resources :people
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html      # get '/*a', to: 'application#not_found'

  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  get 'people/index'
end
