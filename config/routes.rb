Rails.application.routes.draw do

  resources :peintures, only: [:new, :create, :show, :edit, :update, :destroy]

  root to: 'pages#home'
  get '/contact', to: 'pages#contact'


  mount Attachinary::Engine => "/attachinary"
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
