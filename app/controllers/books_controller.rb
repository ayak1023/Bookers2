class BooksController < ApplicationController


  def index
    @book = Book.new
    @book.user_id = current_user.id
    @books = Book.all
  end

  def show
    @book = Book.new
    @book.user_id = current_user.id
    @books = Book.all
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to user_path(current_user.id)
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
