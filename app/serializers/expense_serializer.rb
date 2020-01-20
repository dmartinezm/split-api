class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :amount
  # belongs_to :group
end
