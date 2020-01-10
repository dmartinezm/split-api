class CreateGroupIns < ActiveRecord::Migration[6.0]
  def change
    create_table :group_ins do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
