Rails.application.routes.draw do
  get 'researchers/search'
  get 'researchers/result'
  resources :posts
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :researchers, only: [:new, :create]
  # root to: 'researchers#search'
  # get 'result', to: 'researchers#result'
  post 'researchers/new'


end
