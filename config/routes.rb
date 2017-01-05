Rails.application.routes.draw do
  get 'peinture/index'

  get 'peinture/show'

  get 'peinture/create'

  get 'peinture/new'

  get 'peinture/update'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
