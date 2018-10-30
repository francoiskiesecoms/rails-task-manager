Rails.application.routes.draw do
  # get 'tasks_controller/index'
  # get 'tasks_controller/new'
  # get 'tasks_controller/create'
  # get 'tasks_controller/show'
  # get 'tasks_controller/edit'
  # get 'tasks_controller/update'
  # get 'tasks_controller/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks_controller#index', as: :tasks

  get 'tasks/new', to: 'tasks_controller#new', as: :new_task
  post 'tasks', to: 'tasks_controller#create'

  get 'tasks/:id', to: 'tasks_controller#show', as: :task

  get 'tasks/:id/edit', to: 'tasks_controller#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks_controller#update'

  delete 'tasks/:id', to: 'tasks_controller#destroy'

end

