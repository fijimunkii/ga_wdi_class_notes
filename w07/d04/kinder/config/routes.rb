Kinder::Application.routes.draw do

  root to: 'welcome#index'

  resources :cats

end
