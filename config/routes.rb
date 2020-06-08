Rails.application.routes.draw do
  resources :courses
  resources :usersessions
  resources :sessions
  devise_for :users, defaults: { format: :json },
  path: '',
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  }

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/profile', to: "profile#show"
      resources :classrooms
      resources :categories
    end
  end
end