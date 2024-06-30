class BooksController < ApplicationController


  def index
    @book = Book.new
    @book.user_id = current_user.id
  end

  def show
  end

  def edit
  end

  def create
    book = Book.new(list_params)
    book.save
    redirect_to user_path(current_user.id)
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
