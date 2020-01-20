class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :group_with
  has_many :groups
  has_many :friends
  
end
