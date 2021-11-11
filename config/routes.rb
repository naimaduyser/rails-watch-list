Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Homepage is movies that you've seen
  # See all movies
  root to: 'movies#index'
  # Add a movie
  get 'movies/new', to: 'movies#new'

   # See details about one movie
  # Add a movie
  # Delete a movie
end
