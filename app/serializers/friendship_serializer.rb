class FriendshipSerializer < ActiveModel::Serializer
  attributes :id, :friend_id , :friend_group_share
  has_many :groups
  # has_one :user
end
