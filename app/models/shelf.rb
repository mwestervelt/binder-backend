class Shelf < ApplicationRecord
  enum shelf_type: [:have_read, :currently_reading, :want_to_read]
  belongs_to :user
  belongs_to :book
end
