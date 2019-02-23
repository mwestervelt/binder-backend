class Api::V1::BooksController < ApplicationController

  # def index
  #   #figure out how to get search term from react component to here ??????????
  #   render json: Book.search("asdf")
  # end

  def create
    render json: Book.search(params["term"])
  end
end
