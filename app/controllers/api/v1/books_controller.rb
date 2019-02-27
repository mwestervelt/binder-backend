class Api::V1::BooksController < ApplicationController

  def search
    render json: Book.search(params["term"])
  end

  def create
    # byebug
    render json: Book.create(book_params)
  end

  private
  def book_params
    params.permit(:title, :pageCount, :publishedDate)
    #find by some id and then if it doesn't exit then create but if it does then create the association with the user
  end
  #
  # def book_author
  #   params.require(:authors)[0]
  # end
  #
  # def book_thumbnail
  #   params.require(:imageLinks)[0]
  # end

end
