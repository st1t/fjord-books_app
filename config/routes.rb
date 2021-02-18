Rails.application.routes.draw do
  devise_for :users
  get '/users', to:'users#index'
  get '/users/:id', to:'users#show'
  resources :books
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root to:"homes#index"
end
