Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :emails, only: [:index, :create, :new]
  root to: "emails#index"
end 
