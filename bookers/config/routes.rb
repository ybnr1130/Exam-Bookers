Rails.application.routes.draw do
  get '/' => 'homes#top'
  get 'books/index' => 'books#index'
  get 'books/:id' => 'books#show'
  get 'books/new' => 'books#index'
  get 'books/:id/edit' => 'books#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
