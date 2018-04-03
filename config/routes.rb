Rails.application.routes.draw do

  resources :tasks do
    resources :comments
    resources :subtasks
  end

  resources :subtasks do
    resources :subcomments
  end
  
  devise_for :users
  root to: "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
