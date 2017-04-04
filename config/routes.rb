Rails.application.routes.draw do
  devise_for :users

  resources :agencies
  resources :pages

  get '/contact-us', to: 'pages#contact'
  get '/', to: 'pages#home'
  root to: 'pages#home'

  mount ForestLiana::Engine => '/forest'



  # I18n - Keep all Routes you add to regular also here
  scope "/:locale" do
    root to: 'pages#home'

    resources :agencies
    resources :pages

    get '/contact-us', to: 'pages#contact'
    get '/:locale' => 'pages#home'
  end






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
