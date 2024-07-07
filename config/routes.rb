Rails.application.routes.draw do
  devise_for :users

  root to: "homes#top"
  get "home/about" => "homes#about" ,as: 'about'
  resources :books, only: [:index, :show ,:edit, :new ,:create ,:destroy ,:post]
  resources :users, only: [:index, :show, :edit, :new, :create, :update ,:post]
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
