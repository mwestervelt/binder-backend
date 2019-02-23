class Book < ApplicationRecord



  def self.search(term)
    url = "https://www.googleapis.com/books/v1/volumes?q=#{term}"
    response = RestClient.get(url)
    book_hash = JSON.parse(response.body)
    book_hash["items"].map do |item|
      item["volumeInfo"]
      end
    end




    # map over this array and parse into the data that i want.


end
