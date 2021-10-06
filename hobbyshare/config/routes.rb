Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
#get 'posts/index' => 'posts#index'
#get 'posts/new' => 'posts#new'
#post 'posts' => 'posts#create' 
#get 'posts/:id' => 'posts#show',as: 'post'
#patch 'posts/:id' => 'posts#update'
#delete 'posts/:id' => 'posts#destroy'
#get 'posts/:id/edit' => 'posts#edit', as:'edit_post'
get 'hello/index' => 'hello#index'
root 'hello#index'
#resources :likes, only: [:create, :destroy]
end
