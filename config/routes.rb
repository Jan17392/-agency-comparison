Rails.application.routes.draw do
  get 'agencies/show'

  get 'agencies/index'

  get 'agencies/new'

  get 'agencies/create'

  get 'agencies/update'

  get 'agencies/delete'

  mount ForestLiana::Engine => '/forest'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
