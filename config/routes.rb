Rails.application.routes.draw do
  get 'event_attendees/sign_up'
  devise_for :users
  resources :user
  resources :event_attendees
  resources :event_invites
  get 'events/attended_events', to: 'events#attended_events'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "events#index"
  get '/events/created_events', to: 'events#created_events'
  post "/event_attendees/new", to: 'event_attendees#new'
  get 'events/all_events', to: 'events#all_events'
  get '/events/new', to: 'events#new'
  get '/events/:id', to: 'events#show'
  get 'all_invites', to: 'event_invites#all_invites'
  resources :events
  # Defines the root path route ("/")
  # root "articles#index"
end
