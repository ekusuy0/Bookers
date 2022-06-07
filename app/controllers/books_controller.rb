class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path(book.id)
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
