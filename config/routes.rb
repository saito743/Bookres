Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'

  get 'books' => 'books#new'
  post 'books' => 'books#create'
  get 'books/index' => 'books#index'
  get 'books/:id' => 'books#show'
  patch 'books/:id/edit' => 'books#edit', as:'edit_books'
  delete 'books/id' => 'books#destroy', as:'destroy_books'

end
