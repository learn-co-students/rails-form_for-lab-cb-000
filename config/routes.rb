Rails.application.routes.draw do
  resources :students, :only => [:index, :show, :new, :edit, :update, :create]
  resources :school_classes, :only => [:index, :show, :new, :edit, :update, :create]
end
