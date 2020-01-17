class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :total
  has_many :expenses


 
end
