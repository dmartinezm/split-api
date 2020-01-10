class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :amount
  # has_one :group
end
