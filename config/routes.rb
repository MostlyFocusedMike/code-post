Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index', as: "posts"
  post '/', to: 'posts#create'
  get '/signup', to: 'users#new'
  resources 'posts', only: [:show, :new, :destroy] do # remove user index for actual production
    resources 'comments', only: [:create, :destroy]
  end
  resources 'users', except: [:new, :index, :destroy] do # remove user index for actual production
    resources 'comments', only: [:index]
  end
  get 'users/:id/edit_password', to: "users#edit_password", as: "edit_password"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
end
