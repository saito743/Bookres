class BooksController < ApplicationController
	def new
	  @book = Book.new
	  @books = Book.all
	end

	def create
	    @book = Book.new(book_params)
	    @books = Book.all
	    if @book.save
	    redirect_to show_books_path(@book.id)
	    flash[:complete] = "Book was successfully created."
	  else
		render :template => "books/new"
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
	     redirect_to show_books_path
	     flash[:complete] = "Book was successfully created."
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
    flash[:delete] = "Book was successfully destroyed."
	end
private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
