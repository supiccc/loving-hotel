Rails.application.routes.draw do
  get '/home', to: 'static_pages#home'

  get '/count', to: 'static_pages#table'

  get '/booking', to: 'static_pages#booking'

  get '/live', to: 'static_pages#live'

  get '/search', to: 'static_pages#search'

  get '/find', to: 'static_pages#search'

  post '/create', to: 'static_pages#create'

  post '/find', to: 'static_pages#find'

  post '/living', to: 'static_pages#living'

  get '/checkout', to: 'static_pages#checkout'

  post '/checkouting', to: 'static_pages#checkouting'

  get '/searchroom', to: 'static_pages#searchroom'

  get '/test', to: 'static_pages#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
