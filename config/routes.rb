Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#top'
  get 'books' => 'books#new'
  post 'books' => 'books#create'
  get 'books/:id/edit' => 'books#edit', as:'edit_books'
  patch 'books/:id' => 'books#update'
  get 'books/:id' => 'books#show',as:'show_books'
 delete 'books/:id' => 'books#destroy', as: 'destroy_books'
end
