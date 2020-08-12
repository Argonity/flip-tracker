Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  resources :contractors
  resources :projects
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
