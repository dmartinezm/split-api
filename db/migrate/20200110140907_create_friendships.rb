class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :friend_id

      t.timestamps
    end
  end
end
