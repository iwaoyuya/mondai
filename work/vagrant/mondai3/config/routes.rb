Rails.application.routes.draw do
  resources :books
  post 'books' => 'books#create'
  get 'books' => 'books#new'
  get 'books/:id' => 'books#show', as: 'booker'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  root to: 'books#index'
end
