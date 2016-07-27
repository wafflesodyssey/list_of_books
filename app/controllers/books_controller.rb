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









   private def book_params
     params.require("book").permit(:title)
   end
end
