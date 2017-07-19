Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#welcome'
  get 'about' => 'pages#about'
  get '/welcome' => 'pages#welcome'
  get '/contest' => 'pages#contest'
  get '/kitten/:size' => 'pages#kitten', as: 'gurjant'
  get '/kittens/:size' => 'pages#kittens'
  get '/secrets/:magic_word' => 'pages#secrets'
end
