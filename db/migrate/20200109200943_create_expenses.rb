class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.bigint :user_id
      t.string :description
      t.decimal :amount, precision: 12, scale: 2
      t.belongs_to :group, null: false, foreign_key: true
      t.timestamps
    end
  end
end
