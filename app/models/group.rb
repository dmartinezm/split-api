class Group < ApplicationRecord
  belongs_to :user
  has_many :expenses

  def total
    self.expenses.sum(:amount)
  end

end
