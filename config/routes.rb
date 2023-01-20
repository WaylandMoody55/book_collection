Rails.application.routes.draw do
  resources :books
  get "/books/index", to: "books#index", as: 'books'
  # get 'books/new'
  # get 'books/edit'
  # get 'books/show'
  # get 'books/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
