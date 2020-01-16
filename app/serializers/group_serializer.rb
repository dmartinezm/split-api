class GroupSerializer < ActiveModel::Serializer
  attributes :id,  :name, :total
  # has_one :user
  has_many :expenses


 
end
