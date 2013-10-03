MichaelcalhounCom::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

   resources :blog_posts
   resources :pages
   root to: 'pages#show', id: "home"
end
