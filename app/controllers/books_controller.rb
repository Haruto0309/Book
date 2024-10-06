class BooksController < ApplicationController
  def new
    @Book = Book.new
  end

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
  end

  def edit

  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end
