Rails.application.routes.draw do
  resources :submissions
  resources :assignments
  resources :enrollments
  resources :courses
  resources :students
  resources :teachers

  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/demo', to: 'static_pages#demo'

  get '/student-signup', to: 'students#new'
  post '/student-signup', to: 'students#create'

  get '/teacher-signup', to: 'teachers#new'
  post '/teacher-signup', to: 'teachers#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'

  get '/assignment_editor', to: 'static_pages#assignment_editor'

  get '/submission_editor', to: 'static_pages#submission_editor'

  get '/assignments_list', to: 'static_pages#assignments_list'

  get '/ta_dashboard', to: 'static_pages#ta_dashboard'

  get '/stdn_dashboard', to: 'static_pages#stdn_dashboard'
end
