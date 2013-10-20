MichaelcalhounCom::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

   resources :pages
    
   get 'updates', to: 'blog_posts#index', as: 'updates'
   get 'update/:id', to: 'blog_posts#show', as: 'update'

   root to: 'pages#show', id: "home"
end
