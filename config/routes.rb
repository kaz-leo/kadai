Rails.application.routes.draw do
  root "pages#index"
  get 'pages/help'
  get'user/new'
  resources :users
end
