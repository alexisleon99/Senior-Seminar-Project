class Expense < ApplicationRecord
  belongs_to :travel_form, optional: true
  has_many :expenseItems, dependent: :destroy
  has_many :departments
  has_many :amounts, dependent: :destroy
end
