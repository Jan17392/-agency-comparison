Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :agencies
  resources :pages

  get '/contact-us', to: 'pages#contact'
  get '/', to: 'pages#home'





  # I18n - Keep all Routes you add to regular also here
  scope "/:locale" do
    root to: 'pages#home'

    resources :agencies
    resources :pages

    get '/contact-us', to: 'pages#contact'
    get '/:locale' => 'pages#home'
  end



  mount ForestLiana::Engine => '/forest'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
