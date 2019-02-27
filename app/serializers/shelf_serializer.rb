class ShelfSerializer < ActiveModel::Serializer
  attributes :id, :shelf_type
  has_one :user
  has_one :book
end
