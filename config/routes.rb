Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources 'users', only: [:new, :create, :show, :index, :destroy, :edit, :update]
  end
  resources 'users', only: [:new, :create, :show]
  resources 'questions', only: [:index, :new, :create, :show] do
    resources 'answers', only: [:new, :create, :index]
  end
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: "sessions#destroy"


end
