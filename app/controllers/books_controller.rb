class BooksController < ApplicationController
  def index
    @book = Books.show
  end
end
