class Group < ApplicationRecord
  has_many :expenses, dependent: :destroy
  
  def total
    self.expenses.sum(:amount)
  end

  

end
