class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :books, serializer: BookCollectionSerializer
  has_one :user, serializer: UserCollectionSerializer
end
