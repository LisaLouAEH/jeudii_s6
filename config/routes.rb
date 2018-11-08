Rails.application.routes.draw do
  root 'movies#new'
  post '/show', to: 'movies#show'
  get '/show', to: 'movies#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
