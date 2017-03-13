Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  # this is an example page to show restricting certain pages
  get '/software', to: 'pages#software', as: :software
end
