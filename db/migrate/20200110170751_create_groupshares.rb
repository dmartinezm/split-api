class CreateGroupshares < ActiveRecord::Migration[6.0]
  def change
    create_table :groupshares do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
