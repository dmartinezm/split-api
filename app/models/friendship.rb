class Friendship < ApplicationRecord
  # belongs_to :user_id
  belongs_to :user
  belongs_to :friend, class_name: "User"
  

  def friend_group_share

    p = ActiveRecord::Base.connection.execute("select * from groups inner join groupshares on groupshares.group_id=groups.id")
    h = {}
    p.map{|v| v}
    

  end

end
