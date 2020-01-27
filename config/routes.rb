Rails.application.routes.draw do
  resources :user_todo_lists
  resources :todos
  resources :todo_lists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
