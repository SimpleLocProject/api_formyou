Rails.application.routes.draw do

  devise_for :users, defaults: { format: :json },
  path: '',
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  }
  get '/newUsers', to: "users#newUsers"
  get '/teachers', to: "users#teachers"
  
  resources :users
  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/teacher/courses', to: "courses#teacher_courses"
      get '/teacher/sessions', to: "sessions#teacher_sessions"
      get '/profile', to: "profile#show"
      get '/sessions', to: "sessions#all"
      resources :classrooms
      resources :categories
      resources :courses do
        resources :sessions
      end
      resources :usersessions
    end
  end
end