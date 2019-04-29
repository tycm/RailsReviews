Rails.application.routes.draw do
  get 'sessions/new'
  get 'welcome/index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'

  resources :movies do 
    resources :reviews
  end
  resources :users
  root 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
