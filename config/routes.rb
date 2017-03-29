Rails.application.routes.draw do
  devise_for :users

  scope "/:locale" do
    root to: 'pages#home'

    resources :agencies
    resources :pages

    get '/contact-us', to: 'pages#contact'
  end

  get '/:locale' => 'dashboard#index'

  mount ForestLiana::Engine => '/forest'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
