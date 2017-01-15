Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create, :edit, :update, :show]
  resources :school_classes, only: [:index, :new, :create, :edit, :update, :show]
end
