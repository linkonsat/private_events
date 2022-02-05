Rails.application.routes.draw do
  get 'event_attendees/sign_up'
  devise_for :users
  resources :user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "events#index"
  get 'all_events', to: 'events#all_events'
  resources :events
  # Defines the root path route ("/")
  # root "articles#index"
end
