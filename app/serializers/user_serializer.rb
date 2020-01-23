class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email
  # , :group_with
  has_many :groups #, :order => "created_at DESC"
  has_many :friends
  
end
