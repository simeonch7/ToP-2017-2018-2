Rails.application.routes.draw do
  resources :notes
  root 'notes#new'
  post '/messages/api', to: 'notes#create'
end
