Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources 'users', except: [:destroy] # remove user index for actual production
  resources 'posts', except: [:edit, :update, :destroy] # remove user index for actual production
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
end
