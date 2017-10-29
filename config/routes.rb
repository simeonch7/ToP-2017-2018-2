Rails.application.routes.draw do
  resources :notes
  root 'note#note'
  post '' => 'note#create'
  get 'notes/:id' => 'note#read'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
