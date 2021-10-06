Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] #追記 ユーザーマイページへのルーティング


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :messages, only: [:create]
    
  end
resources :maps 
get 'hello/index' => 'hello#index'
root 'hello#index'

resources :relationships, only: [:create, :destroy]
resources :rooms, only: [:show, :create, :index] do
  member do
    get 'inviting' => 'users#invite'
    post '/users/:user_id/entries' => 'entries#create', as: 'entries'
  end
  resources :chats, only: [:create]


end

delete 'rooms/:room_id/users/:user_id/entries' => 'entries#destroy', as: 'entry'
end
