Rails.application.routes.draw do
  get 'event_attendees/sign_up'
  devise_for :users
  resources :user
  resources :event_attendees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "events#index"
  get 'events/all_events', to: 'events#all_events'
  get '/events/:id', to: 'events#show'
  resources :events
  # Defines the root path route ("/")
  # root "articles#index"
end
