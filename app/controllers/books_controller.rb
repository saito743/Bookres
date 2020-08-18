class BooksController < ApplicationController
	def new
	  @book = Book.new
	  @books = Book.all
	end

	def create
	    @book = Book.new(book_params)
	    if @book.save
	    redirect_to books_path
	  else
		redirect_to books_url
	  end
	end

	def index
	  @books = Book.all
	end

	def edit
	  @book = Book.find(params[:id])
	end

	def update
	  @book = Book.find(params[:id])
	  if @book.update(book_params)
	     redirect_to books_path
	  else
         render 'edit'
      end
	end

	def show
	  @book = Book.find(params[:id])
	end

	def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
	end
private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
