MichaelcalhounCom::Application.routes.draw do
   resources :blog_posts
   resources :pages
   root to: 'pages#show', id: "home"
end
