class BooksController < ApplicationController

  def index
    @books = Book.all
    render :index
  end


  def create
    @books = Book.all
    @book = Book.create(book_params)
    redirect_to "/books/#{@book.id}"
  end

  def show
    @book = Book.find(params["id"])
    render :show
  end

  def edit
    @book = Book.find(params["id"])
    render :edit
  end

  def update
    @book = Book.find(params["id"])
    @book.update(book_params)
    redirect_to book_path(@book.id)
  end

  def delete
    @book = Book.find(params["id"])
    @book.destroy
    redirect_to book_path
  end


   private def book_params
     params.require("book").permit(:title)
   end
end
