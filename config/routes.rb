Rails.application.routes.draw do
  resources :texts
  root 'text#text'
  post '' => 'text#create'
  get 'messages/:id' => 'text#read'
end
