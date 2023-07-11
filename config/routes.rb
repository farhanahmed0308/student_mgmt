Rails.application.routes.draw do
  resources :projects
  resources :courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "open", to: "pages#index" 
  root "pages#index"
  resources :students do
    member do
      get :personal_details
    end
    collection do
      get :active
    end
  end
  namespace :admin do 
    resources :students
  end
end
