Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # SEE ALL TASKS
  get '/tasks', to: 'tasks#index', as: :tasks

  # SEE A TASK FORM
  get '/tasks/new', to: 'tasks#new', as: :new_task

  # VIEW DETAILS OF ONE SPECIFIC TASK
  get '/tasks/:id', to: 'tasks#show', as: :task

  # SUBMIT NEW TASK FORM
  post '/tasks', to: 'tasks#create'

  # SEE A FORM TO EDIT
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # SUBMIT THE EDIT FORM
  patch '/tasks/:id', to: 'tasks#update'

  # DELETE A TASK
  delete '/tasks/:id', to: 'tasks#destroy'
end
