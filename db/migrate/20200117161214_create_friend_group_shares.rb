class CreateFriendGroupShares < ActiveRecord::Migration[6.0]
  def change
    create_table :friend_group_shares do |t|
      t.belongs_to :friendship, null: false, foreign_key: true
      t.belongs_to :groupshare, null: false, foreign_key: true

      t.timestamps
    end
  end
end
