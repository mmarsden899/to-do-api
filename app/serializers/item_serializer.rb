# frozen_string_literal: true

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :created_at, :owned

  def owned
    scope == object.user
  end
end
