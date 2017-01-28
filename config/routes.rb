Rails.application.routes.draw do
  resources :studentsections
  resources :studentclasses
  resources :coursecodes
  resources :batches
  devise_for :users
  root "courses#index"
  resources :courses do
    collection do
      get :showall
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
