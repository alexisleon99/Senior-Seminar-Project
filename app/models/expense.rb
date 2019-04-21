class Expense < ApplicationRecord
  belongs_to :travel_form, optional: true
  has_many :departments
end
