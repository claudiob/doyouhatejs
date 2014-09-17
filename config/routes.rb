Rails.application.routes.draw do
  resources :answers, only: [:new, :create, :index]
  root 'answers#new'
end