Rails.application.routes.draw do
  root to: 'flats#list'

  get '/flats', to: 'flats#list'

  # get /show/293
  # get /show/484
  get '/show/:id', to: 'flats#show', as: :flat
end
