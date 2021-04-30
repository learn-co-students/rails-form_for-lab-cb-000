Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :students, only: [:show,:create,:new,:update,:edit]
resources :school_classes, only: [:show,:create,:new,:update,:edit]
end
