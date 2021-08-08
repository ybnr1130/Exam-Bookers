class BooksController < ApplicationController
# エラー文が表示されない、CreateアクションのちにShow画面へ遷移しない、URLがbooks/:idではなくbooks.:idになる
# 関係しない箇所はコメントアウトに


  def index
    # @books = Book.all
    @book = Book.new
  end

  def show
  end

  def new
    # @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render :index
    end
  end

  def edit
    # @book = Book.find(params[:id])
  end
  
  def destroy
    # book = Book.find(params[:id])
    # book.destroy
    # redirect_to books_index
  end
  
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
