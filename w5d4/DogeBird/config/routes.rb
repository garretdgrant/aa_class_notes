Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # THIS IS HOW WE DO CUSTOM ROUTES
  # method '/path'. to: 'controller-name#specific_method'
  # get '/users', to: 'users#index' --> old fashioned way

  # post '/users', to: 'users#create'

  # Guess what, rails helps us with CRUD method

# terminal - rails routes, shows us all the routes - DO THIS OFTEN
# Different ways to do routes
  # resources :users, except: [:index, :create]
  # resources :users, only: [:index, :create]
  # resources :users do
  #   resources :chirps, only: [:index]
  # end

  # we learn edit and new later(Views)
  resources :users, except: [:edit, :new]
  # resources :chirps
end
