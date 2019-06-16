class CompleteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :task, :blue, :pink, :purple, :owned

  def owned
    scope == object.user
  end
end
