PokemonApp::Application.routes.draw do

  get '/' redirect('/gyms')

  get '/gyms' => 'gyms#index'
  get '/gyms/new' => 'gyms#new'
  get '/gyms/:id' => 'gyms#show'
  get '/gyms/:id/edit' => 'gyms#edit'
  post '/gyms' => 'gyms#create'
  post '/gyms/:id' => 'gyms#update'
  post '/gyms/:id/delete' => 'gyms#destroy'

  get '/trainers' => 'trainers#index'
  get '/trainers/new' => 'trainers#new'
  get '/trainers/:id' => 'trainers#show'
  get '/trainers/:id/edit' => 'trainers#edit'
  post '/trainers' => 'trainers#create'
  post '/trainers/:id' => 'trainers#update'
  post '/trainers/:id/delete' => 'trainers#destroy'

  get '/pokemons' => 'pokemons#index'
  get '/pokemons/new' => 'pokemons#new'
  get '/pokemons/:id' => 'pokemons#show'
  get '/pokemons/:id/edit' => 'pokemons#edit'
  post '/pokemons' => 'pokemons#create'
  post '/pokemons/:id' => 'pokemons#update'
  post '/pokemons/:id/delete' => 'pokemons#destroy'

end
