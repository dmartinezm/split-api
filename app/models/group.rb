class Group < ApplicationRecord
  has_many :expenses
  
  def total
    self.expenses.sum(:amount)
  end

end
