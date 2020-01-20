class FriendshipSerializer < ActiveModel::Serializer
  attributes :id, :friend_id 
  has_many :groups
  # has_one :user
end
