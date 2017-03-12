Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  # this is an example page to show restricting certain pages
  get '/secret', to: 'pages#secret', as: :secret
end
