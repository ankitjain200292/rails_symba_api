Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #

  namespace :api , defaults: {format: 'json'}, constraints: {format: 'json'} do
    namespace :v1 do

      get '/get_countries', to: 'master#get_countries'
      get '/get_states', to: 'master#get_states'
      resources :users, only: [] do
        collection do
          post '/login', to: 'users#login'
          delete '/logout', to: 'users#logout'
        end
      end

      resources :interns, only: [:index,:show, :destroy] do
        collection do
          post 'create', to: 'interns#create'
          get 'intern_list', to: 'interns#intern_list'
        end
        member do
          post 'update', to: 'interns#update'
        end
      end

      resources :supervisors, only: [:index,:show, :destroy] do
        collection do 
          get 'get_all', to: 'supervisors#get_all'
          get 'projects', to: 'supervisors#get_projects'
          post 'create', to: 'supervisors#create'
        end

        member do
          post 'update', to: 'supervisors#update'
        end

      end

      resources :organizations, only: [:index,:show, :destroy] do
        member do
          get 'departments', to: 'organizations#get_departments'
        end

      end

      resources :projects

    end
  end
end
