class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :friends, :groupshares, :groups
  has_many :groups
end
