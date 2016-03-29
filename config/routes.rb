Rails.application.routes.draw do
  get 'home/index'
  post 'home/index'
  get 'home/about'
  root 'home#index'

end
