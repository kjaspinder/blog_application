Rails.application.routes.draw do
  resources :posts
  get 'about', to: 'pages#about' #this means /about will take us to pages controller about action
  root "pages#home"
end
