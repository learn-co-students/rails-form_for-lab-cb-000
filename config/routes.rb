Rails.application.routes.draw do
  resources :school_classes, only: [:create, :show]
  resources :students, only: [:create, :show]
end
