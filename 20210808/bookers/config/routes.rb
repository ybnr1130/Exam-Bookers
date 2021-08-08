Rails.application.routes.draw do
  get '/' => 'homes#top'
  get 'books' => 'books#index', as: 'books_index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'books_id' 
  get 'books/new' => 'books#new', as: 'books_new'
  get 'books/:id/edit' => 'books#edit', as: 'books_edit'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
