class GroupshareSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id
  has_one :group
end
