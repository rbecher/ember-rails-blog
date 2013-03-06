class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :updated_at
  # todo belongs to user
  has_one :post, embed: :ids
end
