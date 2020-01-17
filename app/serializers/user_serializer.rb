class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :friends, :groupshares, :groups, :groups_belong_to
  has_many :groups
end
