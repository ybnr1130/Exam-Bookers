class BooksController < ApplicationController
# エラー文が表示されない、CreateアクションのちにShow画面へ遷移しない、URLがbooks/:idではなくbooks.:idになる
# 関係しない箇所はコメントアウトにしてあるよ


  def index
    @books = Book.all
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
    @books = Book.all
    if @book.save
      flash[:success] = "Book was successfully created"
      redirect_to book_path(@book)
    else
      render :index
    end
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:success] = "Book was successfully updated"
      redirect_to book_path(@book)
    else
      render :edit
    end
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:success] = "Book was successfully destroyed"
    redirect_to books_path
  end
  
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
