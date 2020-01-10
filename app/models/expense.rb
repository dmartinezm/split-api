class Expense < ApplicationRecord
  belongs_to :group
  delegate :user, to: :group

 
end
