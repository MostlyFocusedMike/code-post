Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources 'profiles', except: [:edit, :update, :destroy] # remove user index for actual production
end
