Rails.application.routes.draw do
  get '/users', to:'users#index'
  devise_for :users
  root to:"homes#index"
  resources :books
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
