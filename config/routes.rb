Rails.application.routes.draw do
  #Pages Routes
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  #Tunes Routes
  resources :tunes
end
