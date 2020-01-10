class Friendship < ApplicationRecord
  # belongs_to :user_id
  belongs_to :user
  belongs_to :friend, class_name: "User"
  
end
