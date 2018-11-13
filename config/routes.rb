Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # namespace :api do
  #   namespace :v1 do
      resources :countries, except: [:new, :edit]
      resources :users, except: [:new, :edit]
      resources :favorite_countries, only: [:index, :create]

    end
#   end
# end
