Rails.application.routes.draw do
  get 'dashboard/index'
  get 'dashboard/create_todo'
  post 'dashboard/do_create_todo'
  delete 'dashboard/destroy_todo'
  get 'dashboard/toggle_completed'
  get 'dashboard/assign_user'
  get 'sessions/register'
  post 'sessions/do_register'
  resources :user_todo_lists
  resources :todos
  resources :todo_lists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
