class BooksController < ApplicationController
  before_action :authorized, only: [:show, :new, :create]

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
      if @book.save
        redirect_to book_path(@book)
      else
        render :new
      end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :publisher, :genre, :img_url)
  end

  # this comment marks the end of the class
end
