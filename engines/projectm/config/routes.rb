Projectm::Engine.routes.draw do
  devise_for :users, class_name: "Projectm::User"

  resources :dashboards, :only => :index
  root :to => 'dashboards#index'

  resources :projects
  resources :tasks
  resources :pictures do
    get "download_file"
  end
  resources :project_comments
  resources :photos do
    get "download_task_file"
  end
  resources :task_comments
end
