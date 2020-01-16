class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :friends, :groups
  has_many :groups
end
