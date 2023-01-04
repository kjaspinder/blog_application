Rails.application.routes.draw do
  get 'about', to: 'pages#about' #this means /about will take us to pages controller about action
  root "pages#home"
end
