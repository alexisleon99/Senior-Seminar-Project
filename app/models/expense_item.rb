class ExpenseItem < ApplicationRecord
  belongs_to :expense, optional: true
end
