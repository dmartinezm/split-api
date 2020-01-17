class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :group_with
  has_many :groups
  has_many :friends
  
  # ,  :groups_belong_to
  # has_many :groups
  # has_many :groupshares
end
