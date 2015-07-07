Rails.application.routes.draw do
  resources :projects
  resources :responsibles
  # get 'projects' => 'projects#index'
  # get 'projects/new' => 'projects#new', as: 'new_project'
  # get 'projects/:id' => 'projects#show', as: 'project' 
  # post 'projects' => 'projects#create'
  # delete 'projects/:id' => 'projects#destroy', as: 'destroy_project'
  # get 'projects/:id/edit' => 'projects#edit', as: 'edit_project'
  # patch 'projects/:id' => 'projects#update'
  # get '/' => 'projects#index'
end
