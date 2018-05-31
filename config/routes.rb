Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index', as: "posts"
  resources 'posts', only: [:show, :new, :create] do # remove user index for actual production
    resources 'comments', only: [:create, :destroy]
  end
  resources 'users', except: [:index, :destroy] do # remove user index for actual production
    resources 'comments', only: [:index]
  end
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
end
