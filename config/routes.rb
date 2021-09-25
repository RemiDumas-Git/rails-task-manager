Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks, only: [:index, :new, :create]

  get 'tasks/:id/edit', to: 'tasks#edit', as: :tasks_edit
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy', as: :tasks_delete

  get 'tasks/:id', to: 'tasks#show', as: :task
end
