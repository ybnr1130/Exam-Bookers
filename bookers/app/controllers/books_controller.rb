class BooksController < ApplicationController
# エラー文が表示されない、CreateアクションのちにShow画面へ遷移しない、URLがbooks/:idではなくbooks.:idになる
# 関係しない箇所はコメントアウトにしてあるよ


  def index
    # @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    # @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_id_path(@book.id)
    else
      render :index
    end
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    book.update
    redirect_to books_id_path
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
