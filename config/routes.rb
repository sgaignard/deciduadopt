Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :trees do
    resources :adoptions, only: %i[new create]
  end
end
