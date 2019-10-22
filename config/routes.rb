Rails.application.routes.draw do
  resources :students, only: [:index, :create, :new, :show, :edit, :update]
  resources :school_classes, only: [:index, :create, :new, :show, :edit, :update]
end
