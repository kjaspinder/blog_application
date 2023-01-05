Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/u/:id', to: 'users#profile', as: 'user'

  resources :posts
  get 'about', to: 'pages#about' #this means /about will take us to pages controller about action
  root "pages#home"
end
