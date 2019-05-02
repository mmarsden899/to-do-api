class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :created_at
  has_one :user
end
