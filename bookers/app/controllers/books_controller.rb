class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_index_path
  end
  
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
