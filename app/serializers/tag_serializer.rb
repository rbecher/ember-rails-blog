class TagSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at
  has_one :post, embed: :ids
end