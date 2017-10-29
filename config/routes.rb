Rails.application.routes.draw do
  resources :notes
  get '/notes/:id/info', to: 'notes#info'

  root 'notes#new'
end
