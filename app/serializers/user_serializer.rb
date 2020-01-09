class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  # has_many :journals
end
