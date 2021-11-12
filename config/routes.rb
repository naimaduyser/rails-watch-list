Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # MOVIES
  # See all movies
  get 'movies', to: 'movies#index'

  # Add a movie
  get 'movies/new', to: 'movies#new'
  post 'movies', to: 'movies#create'

  # See details about one movie
  get 'movies/:id', to: 'movies#show', as: 'movie'

  # Edit a movie
  get 'movies/:id/edit', to: 'movies#edit', as: 'edit'
  patch 'movies/:id', to: 'movies#update'

  # Delete a movie
  delete 'movies/:id', to: 'movies#destroy'

  # LISTS
  # See your lists
  get 'lists', to: 'lists#index'

  # Add a list
  get 'lists/new', to: 'lists#new'
  post 'lists', to: 'lists#create'

  # See details of a list
  get 'lists/:id', to: 'lists#show', as: 'list'

  # Delete a list
  delete 'lists/:id', to: 'lists#destroy'

end
