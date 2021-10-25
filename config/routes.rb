Rails.application.routes.draw do
  devise_for :users
  resources :advertisements do
    resources:comments
  end
  root 'home#index'
  # for about page
  get 'home/about'

  get 'myads', to:"advertisements#myads"
end
