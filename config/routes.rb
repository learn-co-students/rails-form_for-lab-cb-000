Rails.application.routes.draw do
  resources :school_classes, only: [:new, :show, :create, :edit, :update]
  resources :students, only: [:new, :show, :create, :edit, :update]
end
