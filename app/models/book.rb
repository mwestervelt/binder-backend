class Book < ApplicationRecord
  has_many :shelves
  has_many :users, through: :shelves

  def self.search(term)

    url = "https://www.googleapis.com/books/v1/volumes?q=#{term}&maxResults=40"
    response = RestClient.get(url)
    book_hash = JSON.parse(response.body)
    book_hash["items"].map do |item|
      item["volumeInfo"]
      end
    end

end
