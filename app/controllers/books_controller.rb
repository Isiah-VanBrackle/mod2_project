class BooksController < ApplicationController
  before_action :authorized, only: [:show, :new, :create]

  def index
    @books = Book.all
    
    
    #with_attached_image
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

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :edit
    end
  end

  def delete
    Book.destroy(params[:id])
    redirect_to books_path
  end

  

  private
  def book_params
    params.require(:book).permit(:title, :author, :publisher, :genre, :image)
  end

  # this comment marks the end of the class
end
