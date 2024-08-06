Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # List all tasks route
  get "/tasks", to: "tasks#index", as: :tasks

  # Add a new task
  get "/tasks/new", to: "tasks#new", as: :new_task
  post "/tasks", to: "tasks#create"


  # Show a specific task with the details
  get "/tasks/:id", to: "tasks#show", as: :task

  # Edit a task
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "/tasks/:id", to: "tasks#update"

  # Destroy a task
  delete "/tasks/:id", to: "tasks#destroy"


  # Defines the root path route ("/")
  # root "posts#index"
end

  # get '/restaurants', to: 'restaurants#index', as: :restaurants

  # get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post '/restaurants', to: 'restaurants#create'

  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # patch '/restaurants/:id', to: 'restaurants#update'

  # # destroy
  # delete '/restaurants/:id', to: 'restaurants#destroy'
