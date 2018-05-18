Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #

  namespace :api , defaults: {format: 'json'}, constraints: {format: 'json'} do
    namespace :v1 do
      resources :users, only: [] do
        collection do
          post '/login', to: 'users#login'
        end
      end

      resources :interns, only: [:index] do

      end

      resources :supervisors, only: [:index] do

      end

    end
  end
end
