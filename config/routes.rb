Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks do
    put :sort, on: :collection
  end
end
